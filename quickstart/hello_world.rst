Hello, world!
=============

Usual way is developing addon locally and then publishing it to our server.
So we will start from creating the simplest addon locally.

1. Installing extension
-----------------------
* `install <https://chrome.google.com/webstore/detail/taist/ncjnldelleedgcfhiohlnccpgfaigbef>`_ our extension (now only Google Chrome is supported)
* log in by clicking on extension icon and then on *"log in"*

2. Creating .manifest file
--------------------------
Create a **.manifest** file anywhere locally and insert there following code:

.. include:: hello_world_manifest.include

3. Writing addon code
---------------------
Create a **hello_world.js** file at the same folder as the manifest file and insert there following code:

.. include:: hello_world_source.include

4. Enabling addon
-----------------
* click on icon again and then on *"Local addon development"* - new page will open
* page will ask for file access rights - give them as described and open the page again
* switch addon ON
* press *'Choose file'* and new window will open showing your root folder - use it to find and choose the .manifest file you created; (it will hide files with other extensions for your convenience)
* addon should be loaded successfuly and show some warnings for missing optional files - ignore them for now.

5. Running addon
----------------
* go to `<https://github.com>`_ - you should receive an alert from your addon when page loads
* open browser console - you should see several lines prefixed with '[Taist]' that report on successful addon launch, including our message "Hello, console!"
* if there is no Taist output, check that **siteRegexp** in the **manifest** is correct

Success!
--------
You have created your first taist addon. Now :doc:`learn </guide/guide_index>` how it works in details and how to add some useful logic to it.

.. toctree::
