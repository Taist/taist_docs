.. Taist documentation master file, created by
   sphinx-quickstart on Tue Feb 11 23:41:24 2014.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Taist
=====

Introduction
------------
Taist is a browser extension to easily change any web application to tailor it to your specific business needs.

Common use cases are:

* **add new features**: custom fields to existing entities, whole new entities that interact with existing ones, custom actions and workflows
* **extend workflow** - add new steps or condition checks
* **automate repeatedly executed tasks** - solve them with less number of human actions
* **manipulate several applications** - execute tasks using only one application instead of switching between several ones, manual copy-pasting data, etc.

How it works
------------
Taist uses **addons** - pieces of Javascript code created by users and hosted on our server.

Each addon implements some changes for a specific web application or website.

When you visit a web application you have active addons for, our browser extension detects it and applies corresponding addons, changing the page while it loads.

Addon code is executed in the scope of the page and is considered by the browser as just another piece of application code, so an addon can:

 * **communicate with server** of target application without any additional authentication - all the auth cookies for its requests are sent automatically by the browser as if those requests were made by original code
 * **reuse original frontend code** - call and modify it in any way needed

Also each addon gets access to Taist API (through one more piece of javascript code also injected to the page). It enables communication with any external server, including ours, and gives lots of additional features (see below)

Why Taist
---------
* comparison with alternatives

Quickstart
----------
* hello, world
* developer's guide
* publishing your addons

Support
-------

Contributing
------------

Contents:

.. toctree::
   :maxdepth: 2
