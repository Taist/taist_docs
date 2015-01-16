Hello, world!
=============

The usual way is developing addon locally and then publishing it to our server.
So we will start from creating the simplest addon locally.

1. Clone `addon repository <https://github.com/Taist/taist_hello_world.git>`_ from Github
-----------------------------------------------------------------------------------------
2. Install extension:
---------------------
* `Install <https://chrome.google.com/webstore/detail/taist/ncjnldelleedgcfhiohlnccpgfaigbef>`_ our Chrome extension
* Click on the extension icon to log in

3. Activate addon:
------------------
* On the `extensions page <chrome://extensions/?id=ncjnldelleedgcfhiohlnccpgfaigbef>`_ enable permission ``Allow access to file URLs`` - it is needed to load addon files from local filesystem
* Click on extension icon again and then on *"Local addon development"*
* Turn addon ON
* Press ``Choose file`` and a new tab with your file system will open; use it to find and choose the file ``hello_world.manifest`` in the addon repository folder

4. Success!
-----------
* Visit `Github <https://github.com>`_: the page background should become dark and a ``Hello, world!`` alert should appear
* open browser console - you should see several lines prefixed with ``[Taist]`` that report on successful addon launch, including addon's message ``Hello, console!``
* You have created your first taist addon. Now :doc:`learn </guide/guide_index>` how it works and how to add some useful functionality to it.

.. toctree::
