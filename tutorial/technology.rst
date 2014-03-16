Technology
==========

Addons
------
Any enhancement to any website is called an **addon**.
Each addon contains Javascript code, optional CSS code, and some configuration data.

Addons are developed by users.
Now addons code has to be stored on our server. Later we will add integration with popular code hostings.

How it works
------------
When you visit a web application you have active addons for, our browser extension detects it and applies corresponding addons, changing the page while it loads.
* Addon code is executed in the scope of the page and is considered by the browser as just another piece of application code, so an addon can:

  * **communicate with server** of target application without any additional authentication - all the auth cookies for its requests are sent automatically by the browser as if those requests were made by original code
  * **reuse original frontend code** - call and modify it in any way needed
  * **modify original DOM and CSS**

* Also each addon gets access to :doc:`Taist API </api>` (through one more piece of Javascript code also injected to the page). It can interact with our extension, thus enabling communication with any external server, including ours, and giving lots of useful features.
