Dependencies
============

jQuery
------
jQuery is always available for addons: if it is not included in original website code, it is injected before addons

Other Javascript libraries
--------------------------
Now external libraries have to be bundled with the addon using tools like Browserify.
We are preparing a 'bootstrap' addon that uses this approach.

Other addons
------------
We are planning to introduce addon dependencies.
For now you can export addon's functionality via global variables that can be accessed by other addons.
