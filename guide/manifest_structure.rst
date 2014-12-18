Manifest structure
==================

In order to run any addon you need to create a **manifest** file

Manifest it is simple json file with some mandatory and some optional fields

Mandatory fields
----------------

* ``id`` - unique name of an addon on Taist. It souldn't contain spaces and aother escape symbols

* ``js`` - relative path to .js source file

* ``title`` - addon title

* ``siteName`` - target site name. This property is used for grouping and filtering on `addons list <http://tai.st/app#/addons>`_

* ``siteRegexp`` - regular expression to match :doc:`target domain name </guide/when_and_where>`

* ``shortDescription`` - string with short addon description

Optional fields
---------------

* ``css`` - relative path to .css source file

* ``description`` - relative path to markdown file with full addon description

* ``pages`` - array of :ref:`entry points <entry-points>`

Manifest sample
---------------

.. include:: ../quickstart/hello_world_manifest.include

.. toctree::
