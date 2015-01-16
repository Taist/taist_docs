Manifest structure
==================

In order to run any addon you need to create a ``.manifest`` file that uses JSON to describe the addon structure

Mandatory fields
----------------

* ``id`` - unique name of a Taist. Should consist of lowercase letters, digits and hyphens

* ``js`` - relative path to addon's Javascript file from the folder that contains manifest

* ``title`` - addon title

* ``siteName`` - the name of the target website. It is also used for filtering `addons list <http://tai.st/app#/addons>`_

* ``siteRegexp`` - regular expression to match :doc:`target domain name </guide/when_and_where>`

* ``shortDescription`` - short addon description (plain text)

Optional fields
---------------

* ``css`` - relative path to addon's CSS file

* ``description`` - relative path to markdown file with detailed addon's description

* ``pages`` - array of :ref:`entry points <entry-points>`

Manifest sample
---------------

.. include:: ../quickstart/hello_world_manifest.include

.. toctree::
