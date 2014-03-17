Writing Javascript
==================
As we have learned while :doc:`creating "Hello, world!" addon </quickstart/hello_world>`, Javascript part of addon is given in separate ``.js`` file and looks like:

.. include:: /quickstart/hello_world_source.include

This is a typical structure of Javascript part - let's learn how it works.

Addon initialization
--------------------
``.js`` file should contain single top-level function - in our example it is named ``init``, but it can have any other or no name at all. It is run when addon is applied to target page.

This function creates and enclosures all the addon logic but does not launch it yet. In our example, single function `doWork` is defined.
Instead, it returns an object (``addonEntry`` in our example) that contains another function in its field ``start``.

Addon launch
------------
The ``start`` function actually launches the addon - in our example it calls ``doWork``.

Arguments of ``start`` function:

* ``taistApi`` is an object that provides access to all Taist features. All the features are described in other chapters of this guide.
  In ``doWork`` we see use of ``log`` function - it's a preferred way of :doc:`Debug output </guide/debugging_and_troubleshooting>`.

* ``entryPoint`` is used for :doc:`fine-tuning </guide/when_and_where>` of what addon parts to launch on what pages of target site.
