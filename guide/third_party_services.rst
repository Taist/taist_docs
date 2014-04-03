Communicating with third-party services
=======================================

``taistApi.proxy`` provides methods to communicate with any third-party service without struggling with Same-origin policy or Content Security Policy:

* ``taistApi.proxy.get(host, path, callback)`` - sends ``GET`` request
* ``taistApi.proxy.post(host, path, body, callback``) - sends ``POST`` request

**params**:

* ``host`` - protocol (optional, ``http://`` is used by default) + hostname + port, like ``google.com`` or ``https://my-server.com:8000``
* ``path`` - rest of url, starting with ``/``, like ``/doodles/finder/2014/All%20doodles``
* ``function callback(taistError, responseFromRemoteServer)``:

  * ``taistError`` contains only internal Taist error, not error from remote server: 
  
    * if remote server responds with error (in ``responseFromRemoteServer.error``), ``taistError`` is still ``null``
    * if ``taistError`` is given, ``responseFromRemoteServer`` is ``null``
  * ``responseFromRemoteServer`` is an object with fields:
  
    * ``statusCode``
    * ``body``
    * ``error``

``taistApi.proxy`` automatically processes ``30*`` redirects, returning the result of final query
