Communicating with third-party services
=======================================

``taistApi.proxy`` provides methods to communicate with any third-party service without struggling with Same-origin policy or Content Security Policy:

* ``taistApi.proxy.get(host, path, callback)`` - sends ``GET`` request
* ``taistApi.proxy.post(host, path, body, callback``) - sends ``POST`` request

**params**:

* ``function callback(taistError, responseFromRemoteServer)``:
  * ``error`` contains only internal Taist error, not error from remote server: if remote server responds with error, ``taistError`` is still ``null``
  * ``responseFromRemoteServer`` is an object with fields ``statusCode`` ``body``, ``error``

``taistApi.proxy`` automatically processes ``30*`` redirects, returning the result of final query
