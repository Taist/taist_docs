Addon's manifest
================
Every addon needs a manifest that contains all the info for Taist to load and launch the addon.
It should be a JSON file with ``.manifest`` extension.

Addon's file structure
----------------------
An addon can have any folder and file structure.
Even several addons can be placed inside the same folder.
You just need to ensure that all the file paths used in an addon's ``manifest`` are correct.

Manifest structure
------------------
A manifest example:

.. code-block:: json

  {
    "id": "google-drive-folder-descriptions",
    "js": "build/drive_folder_descriptions.js",
    "title": "Folder descriptions",
    "siteName": "Google Drive",
    "siteRegexp": "drive.google.com",
    "shortDescription": "Add a description to any folder that is displayed in the folders list and inside the folder itself",
    "css": "build/drive_folder_descriptions.css",
    "description": "./drive_folder_descriptions.md",
    "pages": null
  }

Manifest description (**mandatory** fields are in bold):

* **id** - unique name of an addon. Should consist of lowercase letters, digits and hyphens. Usually contains target application's name and addon purpose.

* **js** - relative path to addon's Javascript file from the folder that contains the manifest

* **title** - addon title

* **siteName** - name of the target application or website. It is also used to group addons for the same applications in `addons list <http://tai.st/app#/addons>`_

* **siteRegexp** - regular expression to match the domain name of a target website. Typical use cases:

  * **a single common domain** is used for all the customers of the application - just use plain text like ``drive.google.com``
  * **a separate subdomain for every customer** is used - just add ``.`` in the beginning: ``.someapp.com`` will run on ``customer1.someapp.com`` and ``customer2.someapp.com`` but will skip the marketing website `someapp.com`
  * **in other cases** just use an appropriate regular expression

* **shortDescription** - Short addon description in plain text

* **css** - relative path to addon's CSS file

* **description** - relative path to a file with detailed addon's description. `Markdown <https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet>`_ can be used in it.

* **pages** - array of entry points to :doc:`limit a set of pages to launch an addon on </guide/choosing_pages>`. It is not set in the example above as it can be used only for non-single page applications.

.. toctree::
