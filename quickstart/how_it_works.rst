How it works
============

Introducing addons
------------------
Any enhancement to any website is called an **addon**.
Each addon implements a single enhancement to a single web site and contains Javascript code, optional CSS code, and some configuration data.

Addons are developed by users.
Now addons code has to be stored on our server. Later we will add integration with popular code hostings.

How it works
------------
What happens when you visit any webpage:

* our browser extension detects whether you have active addons for this webpage
* it loads corresponding addons from our server and launches them
* each addon changes the page - changes its UI, adds new logic

What can addons do:

* **As a part of page**: addon code is executed in the scope of the page and is considered by the browser as just another piece of that page, so an addon can:

  * **communicate with website server** without any additional authentication - all the auth cookies for its requests are sent automatically by the browser as if those requests were made by original code
  * **reuse original frontend code** - call and modify it in any way needed
  * **modify original DOM and CSS**

* **As Taist addon**: it gets access to our :doc:`addon API </guide/guide_index>`, that gives lots of useful features:

  * communication with any external server regardless of website restrictions
  * data storage
  * etc.

.. toctree::
