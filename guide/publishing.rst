Publishing addons
=================

You can share finished addon with your colleagues and any other Taist user by publishing it on our site.

**! Important**: now all published addons can be used by anyone; we are planning to create private mode to publish addons only for your company when we get solid demand on it; so, if you need it, please `tell us <mailto:anton@tai.st?subject=Private%publishing%20mode%20request>`_

Publishing first version
------------------------
* Go to `publishing form <http://tai.st/app#/addons/new>`_ (you can also go to it from extension - from addon development page)
* Fill its fields:

  * ``Addon id`` - unique human-readable name that helps identifying addons during development like ``github-add-checklists``
  * ``Title``
  * ``Description`` - addon description: may contain links (both just inline URLs and full-blown ``<a>`` tags) and other HTML
  * ``Site name`` - name of the target site or service, not its domain - ``Github``, ``Gmail``, ``Basecamp``, etc.
  * ``Target domain`` - the same as in local development
  * ``JS`` - contents of your addon's `.js` file
  * ``CSS`` (optional) - contents of your addon's `.css` file
  * ``Config`` (optional) - contents of your addon's `.config` file

* Hit "Save" - addon will be saved and the form changes to addon edit form
* Go to `addons list <http://tai.st/app#/addons>` - your addon will be visible there for all users. Activate it with button to the right and check how it works

Updating published addon
------------------------
* Remember to disable current published version of addon while developing new version locally
* To update addon, just click it from addons list - edit form will open



