Debugging and troubleshooting
=============================

Debug and error output
----------------------
Please, use ``taistApi.log(...)`` and ``taistApi.error(err)`` instead of ``console.log`` and ``console.error``:

* they add prefixes that help to identify your addon output, like ``[Taist] [DEVELOPED_ADDON]``
* later they will be enhanced to send output to addon author if it is needed to get additional debug information, and to properly display errors for addon user

Additional features of ``taistApi.error(err)``:

* it checks ``err.halt`` - if it is ``true``, ``new Error(err.message)`` is thrown stopping addon execution
* in production mode it sends error info to Taist developers to help with addon troubleshooting

Troubleshooting
---------------
If you experience any problems or bugs during addon development, try checking:
* target page console: Taist reports all errors appeared while addon launch and work there, including errors in ``taistApi`` calls
* addon development page: if addon is just not applied to target page, go to addon development page, check addon settings and hit ``Save`` one more time - maybe some warnings will appear;
* extension background page's console: if addon still does not launch, open Taist extension background page (from Chrome's extensions page) and check its console: Taist writes there when it applies addons to any page
* if nothing helps, send us a bug report - there's a link in our extension's popup


Optional errors processing
--------------------------
As all errors from ``taistApi`` calls are always processed by Taist first, processing them in addons is not obligatory and ignoring them can simplify addon's logic.

So there are two error processing modes regulated by flag ``taistApi.haltOnError`` (``false`` by default):

1. (default) Pass errors to addons: ``haltOnError = false``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In this mode after error is processed by Taist it is passed to addon's callback, and all callbacks look like

.. code-block:: javascript

  function callback(error, result) {
    if (error) {
      // additionally process error here
      ...
    }
    else {
      // process result
      ...
    }
  }

2. Halt addon execution on error: ``haltOnError = true``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In this mode error is not passed to addon's callbacks - uncaught Error is thrown instead.
So callbacks are simpler and look like

.. code-block:: javascript

  function callback(result) {
    // process result
  }

3. Setting processing mode
^^^^^^^^^^^^^^^^^^^^^^^^^^
``taistApi.haltOnError`` can be changed in any moment - each ``taistApi`` call will use its value that was actual just before call was started

.. toctree::
