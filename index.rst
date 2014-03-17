.. Taist documentation master file, created by
   sphinx-quickstart on Tue Feb 11 23:41:24 2014.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Introduction
============
Taist is a browser extension to easily change any web application to tailor it to your specific business needs.

What you can do with it:
------------------------
* **add new features**: custom fields to existing entities, whole new entities that interact with existing ones, custom actions and workflows
* **extend workflow** - add new steps or condition checks
* **automate repeatedly executed tasks** - solve them with less number of human actions
* **manipulate several applications** - execute tasks using only one application instead of switching between several ones, manual copy-pasting data, etc.

How it works:
-------------
* Taist uses **addons** - pieces of Javascript code created by users and hosted on our server.
* Each addon implements single enhancement for a specific web application or website.
* Our browser extension applies addons to their target websites when you visit them.
* More details :doc:`here </quickstart/how_it_works>`

Why Taist
---------
Taist is like browser extensions on steroids:

* no extension development skills required
* much faster and easier development, deployment and management
* lots of powerful features out of the box

:doc:`Here <quickstart/why_taist>` you can read more about Taist vs bare browser extensions.

Quickstart
----------
* First, create your :doc:`"Hello, world!" addon </quickstart/hello_world>`
* Then turn it into real-life solution using Taist API described in :doc:`Developer Guide </guide/guide_index>`
* To make development easier, read our :doc:`Troubleshooting tips </guide/debugging_and_troubleshooting>`

Support
-------
* Please, feel free to ask any questions, suggest new features and report bugs using `Github issues <https://github.com/Taist/taist_docs/issues>`_
* And here are :doc:`/support/Release_notes` and :doc:`/support/Roadmap`
* or just `write me <mailto:anton@tai.st?subject=Feedback%20on%20Taist>`_ to tell what sucks or what you like or to ask any question you have

Contributing
------------
* Feel free to contribute to these docs on `Github <https://github.com/taist/taist_docs>`_

.. toctree::
  :maxdepth: 2

  self
  /quickstart/quickstart_index
  /guide/guide_index

  /support/Roadmap
  /support/Release_notes
