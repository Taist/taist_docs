Communicating with third-party services
=======================================

``taistApi.proxy`` provides methods to communicate with any third-party service without struggling with Same-origin policy or Content Security Policy:

``taistApi.proxy.jQueryAjax(host, path, settings, callback(taistError, responseFromRemoteServer))`` works like `jQuery.ajax <http://api.jquery.com/jquery.ajax/>`_:

**pseudocode of successful call**:

.. code-block:: javascript

  taistApi.proxy.jQueryAjax = function(host, path, settings, callback) {
    settings.url = host + path;
    settings.success = function(data, textStatus, jqXHR){
      callback(null, {
        error: null,
        statusCode: jqXHR.status,
        headers: jqXHR.getAllResponseHeaders().split('\n'),
        body: jqXHR.responseText,
        result: data
      })
    };
    
    jQuery.ajax(settings);
  };

**params**:

* ``host`` - protocol (optional, ``http://`` is used by default) + hostname + port, like ``google.com`` or ``https://my-server.com:8000``
* ``path`` - rest of url, starting with ``/``, like ``/doodles/finder/2014/All%20doodles``
* ``settings`` - almost identical to ``settings`` parameter of `jquery.ajax`, except that you can set only JSON-convertable options (functions will be just skipped)

  * ``async``, ``cache``, ``contents``, etc. - OK
  * ``beforeSend``, ``complete``, ``success`` and other functions will be ignored while stringifying it to pass to Taist extension

* ``taistError`` contains only internal Taist error, not error from remote server: 
  
  * if remote server responds with error (in ``responseFromRemoteServer.error``), ``taistError`` is still ``null``
  * if ``taistError`` is given, ``responseFromRemoteServer`` is ``null``
  
* ``responseFromRemoteServer`` is an object with fields:
  
  * ``statusCode`` - status code like ``200`` or ``401``
  * ``body`` - plain response body
  * ``result`` - contains response body automatically parsed by jQuery according to ``settings.dataType``;
    
    * if response body cannot be stringified using ``JSON.stringify`` (to pass it to addon from extension), ``result`` is ``null``, and ``responseFromRemoteServer.resultStringifyError`` is set and contains error message; ``body`` is still defined
  * ``error`` - error message from remote server; if it is set, ``result`` is not set;
  * ``headers`` - array of response headers like ``["Cache-Control: private", "Server: nginx/1.1.19"]``

**examples**:

.. code-block:: javascript
  
  logResults = function(error, result){
    console.log('error:', error);
    console.log('result:', result);
  };
  
  //successful call to JSON api
  taistApi.proxy.jQueryAjax('https://api.github.com', '/users/taist/repos', {}, logResults);
  
  /* output
  error: null
  result: Object {error: null, statusCode: 200, headers: Array[20], body: «{ …} ", result: Array[2]}
  */
  
  //unsuccessful call
  taistApi.proxy.jQueryAjax('https://www.googleapis.com', '/blogger/v2/blogs/2000', {method: 'GET'}, logResults);
  
  /* output
  error: null
  result: Object {error: "Forbidden", statusCode: 403, headers: Array[14], body: "{error": { ... }"
  */
