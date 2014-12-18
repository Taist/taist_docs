Managing when and where to launch addons
========================================

You can manage where (on what domains and pages) and when (on what special events) to launch your addon logic.

Target domain
-------------
Target domain is required for any addon. It should be defined in the **siteRegexp** field of the addon manifest.

Use an regular expression to match target host name

* ``google.com`` will fire on ``google.com`` and any subdomain
* ``.google.com`` will fire on any subdomain of ``google.com``
* ``^(?!www\.).*google.com`` will fire on any subdomain of ``google.com`` except ``www.google.com``

Dots in samples above mean 'any character' if you want to use read dot symbol just escape it ``\.google\.com``

Important: when are addons launched
-----------------------------------
**Addons are launched on every DOM load** - it means, after user navigates to new page or reloads current one, or navigates back/forward in history to other page, or reopens previously closed page.

**Addons are not launched on**:

* *hash change* - when just hash changes, page's DOM is not reloaded; if addon was already launched on this page it remains active, so no need in injecting and launching it again.
* *programmatic manipulation with history* - if ``history`` object is modified programmatically without actual page change, previous addons also remain on the page so no need to launch them again.

So there are different approaches on managing addons for :ref:`sites-reloading-pages` and :ref:`fully-dynamic-sites` (usually single-page applications)

.. _sites-reloading-pages:

Sites that reload pages during navigation
-----------------------------------------

For such sites you can use **entrypoints** to limit your addon to some specific pages and split its logic for different pages.
Entrypoints are set as ``pages`` property in ``.manifest`` file.

Let's look at example:

``.js`` file:

.. code-block:: javascript

  function() {

  	function tasksLogic(){
  	  alert('user part');
  	};

  	function adminLogic(){
  	  alert('admin part');
  	};

    return {
      start: function(utils_described_later, entryPoint) {
        if (entryPoint === ‘tasks’)
  	      tasksLogic();
        else
  	      adminLogic();
      }
    };
  }


``.manifest`` file:

.. code-block:: javascript

  {
    "pages": [
      {
        "path": "^(/\w+)/tasks",
        "entryPoint": "tasks"
      },
      {
        "path": "^/admin/",
        "entryPoint": "admin"
      }
    ]
  }

.. _entry-points:

Entry points
------------

Entry points are contained in object ``pages`` - there are two records with fields:

* ``path`` - a string representation of a Regexp
* ``entryPoint`` - a string name of current entryPoint


On a new page load, entryPoints are iterated in the order they are given in config:

* the first entryPoint with ``path`` that fits ``location.pathname`` is chosen as resulting entryPoint and addon is applied - it's ``start`` function receives resulting entryPoint name as a second parameter.
* if no entryPoint fits, addon is not applied

Results:

================================  ================      ==========  ============
url                               addon is applied      entryPoint  alert output
================================  ================      ==========  ============
somesaas.com/admin/               Yes                   admin       admin part
somesaas.com/adminproject/        No                    \-
somesaas.com/clientproject/tasks  Yes                   tasks       tasks part
somesaas.com/tasks                No                    \-
somesaas.com/admin/tasks          Yes                   tasks       tasks part
================================  ================      ==========  ============

.. _fully-dynamic-sites:

Fully dynamic sites
-------------------
For sites that you should design addons to be applied from the very beginning on any page.
Then you can watch for hash change using ``taistApi.hash``:

.. _taistApi-hash-description:

* ``taistApi.hash.onChange(callback)`` - runs ``callback(newHash, oldHash)`` when the hash part of the URL is changed.
* ``taistApi.hash.when(regexp, callback)`` - runs ``callback()`` every time when hash changes and fits ``regexp``. ``regexp`` can be given as a string or a RegExp object.
