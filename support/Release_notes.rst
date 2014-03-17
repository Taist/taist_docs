Release notes
=============

0.2 - 2014.03.17
----------------
In this release we completely rewrote the whole project:

* wrote real docs using `Read the docs <http://readthedocs.org>`_ instead of single Google Doc
* rewrote website, migrated it to AngularJS from plain Javascript
* rewrote browser extension

User-affecting changes:
^^^^^^^^^^^^^^^^^^^^^^^
* Now extension authenticates using Google account that is used in Chrome itself.

Developer-affecting changes:
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* :ref:`taistApi.hash <taistApi-hash-description>` is added to simplify processing of hash changes, ``taistApi.wait.hashChange`` is deprecated;
* :ref:`taistApi.companyData <taistApi-companyData>` is added to store data shared between company or team members;
* :ref:`taistApi.haltOnError <taistApi-haltOnError>` is added to get rid of boilerplate error processing code;
* :ref:`taistApi.wait.change <taistApi-wait-change>` is added to simplify watching for value changes;
* addon development UI made more convenient:

  * link to addon page now is located in extension popup;
  * added UI for setting local ``*.js`` file.

.. toctree::
