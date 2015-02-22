Storing data
============

Taist allows to store data in different ways:

User data locally
-----------------
``taistApi.localStorage`` allows to store data using ``localStorage`` - it's just a wrapper around ``localStorage`` that allows storing objects:

* ``set(key, value)`` - stores value in ``localStorage``; can store objects
* ``get(key)`` - gets previously stored value;
* ``delete(key)`` - deletes value

User and company data on server
-------------------------------
Data can also be stored on Taist server: 

* user-level data is processed via ``userData``
* company-level data (shared between all company members) is processed via ``companyData``

``userData`` and ``companyData`` have the same basic interface:

* ``set(key, value, callback)`` - stores ``value`` on Taist server
* ``get(key, callback)`` - gets previously stored data
* ``delete(key, callback)`` - deletes ``value``; throws an error if there is no data stored with given ``key``

**params**:
* ``key``, ``value`` - scalar value or JSON-like object
* ``function callback(error, result)`` - ``result`` is set only for ``get`` method

Company data: working with parts of values
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``companyData`` also allows to change or retrieve parts of data:

* ``getPart(key, partKey, callback)`` - gets field ``partKey`` of an object previously stored with key = ``key``
* ``setPart(key, partKey, value, callback)`` - sets field ``partKey`` of an object previously stored with key = ``key``

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
