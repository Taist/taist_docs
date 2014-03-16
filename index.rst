.. Taist documentation master file, created by
   sphinx-quickstart on Tue Feb 11 23:41:24 2014.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Introduction
------------
Taist is a browser extension to easily change any web application to tailor it to your specific business needs.

Common use cases:
^^^^^^^^^^^^^^^^^
* **add new features**: custom fields to existing entities, whole new entities that interact with existing ones, custom actions and workflows
* **extend workflow** - add new steps or condition checks
* **automate repeatedly executed tasks** - solve them with less number of human actions
* **manipulate several applications** - execute tasks using only one application instead of switching between several ones, manual copy-pasting data, etc.

How it works:
-------------
* Taist uses **addons** - pieces of Javascript code created by users and hosted on our server.
* Each addon implements some changes for a specific web application or website.
* When you visit a web application you have active addons for, our browser extension detects it and applies corresponding addons, changing the page while it loads.
* Addon code is executed in the scope of the page and is considered by the browser as just another piece of application code, so an addon can:

 * **communicate with server** of target application without any additional authentication - all the auth cookies for its requests are sent automatically by the browser as if those requests were made by original code
 * **reuse original frontend code** - call and modify it in any way needed

* Also each addon gets access to Taist API (through one more piece of javascript code also injected to the page). It enables communication with any external server, including ours, and gives lots of additional features (see below)

Why Taist
---------
Everything you can do with Taist you can technically do without it by creating custom browser extensions.

But you will have to solve lots of tasks that are already solved in Taist - creating, deploying and administering browser extension, creating backend for data storage and server logic, user provisioning, etc.

**Taist reduces your development and maintenance costs on orders of magnitude** by solving all the secondary tasks and allowing you to focus on writing business logic and giving tools to easily manage and maintain it.

Some of Taist advantages:
^^^^^^^^^^^^^^^^^^^^^^^^^
* no need to create and maintain browser extension - just plain Javascript code, easily deployed and maintained
* built-in tools for easy development, deployment and support of addons
* out of the box features like

  * data storage with different access levels - user-based, company-based
  * user provisioning
  * integration into target web applications UI
  * support of cross-origin requests and Content Security Policy

Quickstart
----------
* First, create your :doc:`"Hello, world!" addon <tutorial/hello_world>`
* Then turn it into real-life solution using :doc:`Taist API <api>`
* To make it easier, read our :doc:`tutorial/Cookbook` and :doc:`Troubleshooting tips <tutorial/troubleshooting>`

Support
-------
* Please, feel free to ask any questions, suggest new features and report bugs using `Github issues <https://github.com/Taist/taist_docs/issues>`_
* And here are :doc:`support/Release_notes` and :doc:`support/Roadmap`

Contributing
------------
* Feel free to contribute to these docs on `Github <https://github.com/taist/taist_docs>`_

.. toctree::
   :maxdepth: 2
