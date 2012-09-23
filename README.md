A very simple set of utility functions that I believe should have been provided in standard Adobe ColdFusion 10 library.  

Now this is tested to work on Adobe ColdFusion 10, because it uses some syntax enhancements of this release.  

This is an ongoing work, new modules will be added (and some of them are not implemented yet).  

For example, the functions that I need the most are the ones that work with Array:  

* Map
* Every
* Some
* Fold / Reduce

See the source for usage details.

##Usage

Initialize the Util.cfc (no parameters are accepted) and keep it either in your dependency injection module (AKA bean factory) or just in application scope:

```ColdFusion
 application.Util = new CFutil.Util();
```

Then use it:

```ColdFusion
application.Util.Array.map( [1,2,3], function (item) { return item * 2; });
```

##Tests

Every function is tested using MXunit. You can find tests in tests folder.
