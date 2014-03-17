Storing data
============

Taist allows to store data in different ways:

User data locally
-----------------
``taistApi.localStorage`` allows to store data using ``localStorage`` - it's just a wrapper around ``localStorage`` that allows storing objects:

* ``set(key, value)`` - stores value in ``localStorage``; can store objects
* ``get(key)`` - gets previously stored value;
* ``delete(key)`` - deletes value

User data on server
-------------------
``taistApi.userData`` stores data linked to current addon user on server:

* ``set(key, value, callback)`` - stores value
* ``get(key, callback)`` - gets previously stored value;
* ``delete(key, callback)`` - deletes value; throws an error if value doesn't exist in storage

**params**:
* ``key``, ``value`` - scalar value or JSON-like object
* ``function callback(error, result)`` - ``result`` is set only for ``get`` method

Company data on server
----------------------
``taistApi.companyData`` allows to store data shared between employees of one company, members of one team or participants of one project.

To define company members, open ``companyKey`` is used - it's a value that is got from target service and is equal for all company members.
For example, addon for some CRM can use company name or id, addon for Github can use repository name.

* ``setCompanyKey(companyKey)`` - sets ``companyKey``; should be called before any data access method;
* ``set(key, value, callback)`` - stores value;
* ``get(key, callback)`` - gets previously stored value;
* ``delete(key, callback)`` - deletes value; throws an error if value doesn't exist in storage

**params**:
* ``companyKey``, ``key``, ``value`` - scalar value or JSON-like object
* ``function callback(error, result)`` - ``result`` is set only for ``get`` method

Working with parts of values
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``taistApi.companyData`` also allows to change or retrieve parts of data:

* ``getPart(key, partKey, callback)`` - gets field ``partKey`` of an object previously stored with key = ``key``
* ``setPart(key, partKey, callback)`` - sets field ``partKey`` of an object previously stored with key = ``key``

Example:

.. code-block:: javascript

  taistApi.companyData.set('foo', {bar: 1, baz: '2'}, function(setErr){
    taistApi.companyData.getPart('foo', 'bar', function(getPartErr, part){

      taistApi.log('foo.bar =', part);

      taistApi.companyData.setPart('foo', 'baz', {newBaz: true}, function(setPartErr){

        taistApi.companyData.get('foo', function(getErr, whole){

          taistApi.log('foo =', whole);
        })
      })
    })
  })

  /*
  output:

  foo.bar = 1
  foo = {"bar":1,"baz":{"newBaz":true}}
  */
