How it works
============

Addons
------
Taist uses addons - bundles of Javascript and CSS that are injected into the target web pages.
Each addon is launched on a specific website and usually implements a single enhancement or feature.

Anybody who knows Javascript can create addons.

How it works
------------
* When you visit any web page our browser extension detects whether you have any addons that should be launched on it
* If such addons exists, our extension injects them to the page when it starts loading

What can addons do:
-------------------
* **As a part of page**: addon code is executed in the scope of the page and is considered by the browser as just another piece of that page, so an addon can:
  * **communicate with website server** without any additional authentication - all the auth cookies for its requests are sent automatically by the browser as if those requests were made by original code
  * **reuse original frontend code** - call and modify it in any way needed
  * **modify original DOM and CSS**

* **As Taist addon** it gets access to :doc:`addons SDK </guide/guide_index>` that provides it useful features:
  * communication with any external server regardless of website restrictions
  * data storage
  * convenient ways of integration into the original UI and logic of a web page

.. toctree::
