1. `edgedb project init`

2. ```
   insert Hero { name := 'Tony Stark', secret_identity := "Iron Man" };
   ```

3. ```
   update Hero filter .name = 'Tony Stark' set {
     friends += (insert Hero {
       name := 'James Rhodes', secret_identity := 'War Machine'
     })
   };
   ```

Result:

```
ERROR: InternalServerError: invalid reference to FROM-clause entry for table "Hero~4"
  Hint: This is most likely a bug in EdgeDB. Please consider opening an issue ticket at https://github.com/edgedb/edgedb/issues/new?template=bug_report.md
  Server traceback:
      edb.errors.InternalServerError: invalid reference to FROM-clause entry for table "Hero~4"

```
