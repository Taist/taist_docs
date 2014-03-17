Basic integration with original UI
==================================
``taistApi.wait`` provides simple and powerful ways to integrate addon's UI into original website UI.

Waiting for specific elements to render
---------------------------------------
The most important and heavily used is ``taistApi.wait.elementRender``:

``elementRender(elementSelector, callback)`` - fires a callback every time when a new element appears that matches ``elementSelector``

**params**:

* ``elementSelector`` - either jQuery-like string selector or a function that returns jQuery elements:  every time new element appears that can be found using this selector or function, callback is fired
* ``function callback($element)`` - callback to fire; is fired separately for each new element that matches ``elementSelector``
    ``$element`` - jquery object containing single DOM element

**behaviour**:

* ``callback`` is fired only once for each ``$element``;
* if several ``elementRender`` calls were made, every ``callback`` whose ``elementSelector`` matches current ``$element`` is fired

It's very convenient for reacting on any UI change.
Example:

.. code-block:: javascript

  taistApi.wait.elementRender('.foo', function(element){
    taistApi.log('string selector fired:', element.text());
  });

  taistApi.wait.elementRender(function(){return $('p')}, function(element){
    taistApi.log('function selector fired:', element.text());
  });

  setTimeout(function(){
    $('body').append('<span class="foo">1</span>');

    $('body').append('<p>2</p><p>3</p>');

    $('body').append('<p class="foo">4</p>');
  }, 1000);


  /*

  output:

  string selector fired: 1
  string selector fired: 4
  function selector fired:  2
  function selector fired:  3
  function selector fired:  4

  */

Intercepting original UI actions
--------------------------------
Intercepting actions is pretty straightforward - usually it is just adding new event handlers.
Example - intercepting button click:

.. code-block:: javascript

  taistApi.wait.elementRender('button.saveDeal', function(saveButton){
    saveButton.click(function(){
      if (!additionalDealDetailsFilled()) {
        $('span.saveDealError').text('Please, save additional deal details');

        //prevent original click handler firing
        return false;
      }
      else
        //allow original click handler firing and deal save
        return;
    })
  });


General-purpose waiting functions
---------------------------------
There's a bunch of general-purpose functions that can be also handy when integrating into UI:

``taistApi.wait.once(condition, callback)`` - waits for ``condition`` to become ``true`` once and fires a callback;

``taistApi.wait.repeat(condition, callback)`` - waits for ``condition`` to become ``true``, fires a callback and waits again;

  **params**:

  * ``function condition()`` - calculates condition, returns ``true`` when condition is met
  * ``function callback()`` - callback


.. _taistApi-wait-change:
``taistApi.wait.change(expression, callback)`` - fires ``callback`` every time ``expression`` changes value

  **params**:

  * ``function expression()`` - function to calculate current expression value

  **use cases**: watch for change of selected tab or selected item list
