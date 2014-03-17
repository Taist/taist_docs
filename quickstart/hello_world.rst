Hello, world!
=============

Usual way is developing addon locally and then publishing it to our server.
So we will start from creating the simplest addon locally.

1. Installing extension
-----------------------
* `install <https://chrome.google.com/webstore/detail/taist/ncjnldelleedgcfhiohlnccpgfaigbef>`_ our extension (now only Google Chrome is supported)
* log in by clicking on extension icon and then on *"log in"*

2. Writing addon code
---------------------
Create a **.js** file anywhere locally and insert there following code:

.. include:: hello_world_source.include

3. Enabling addon
-----------------
* click on icon again and then on *"Develop addon locally"* - new page will open
* page will ask for file access rights - give them as described and open the page again
* switch addon ON
* in field *'Target domain'* write *'google.com'*
* press *'Choose file'* and new window will open showing your root folder - use it to find and choose the .js file you created; (it will hide files with other extensions for your convenience)
* click *`Save`*. It should save successfully and show some warnings for missing optional files - ignore them for now.

4. Running addon
----------------
* go to `<http://google.com>`_ - you should receive an alert from your addon when page loads
* open browser console - you should see several lines prefixed with '[Taist]' that report on successful addon launch, including our message "Hello, console!"
* if there is no Taist output, check that 'Target domain' is correct

Success!
--------
You have created your first taist addon. Now :doc:`learn </guide/guide_index>` how it works in details and how to add some useful logic to it.

.. toctree::
