(function() {

  window.app = {} ||  app;

  require(["jquery", "d3", "bootstrap"], function($, d3, tb) {
    var mod, _i, _len, _ref;
    console.log($);
    console.log(d3);
    console.log(tb);
    _ref = [$, d3, tb];
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      mod = _ref[_i];
      app.modules.push(mod);
    }
  });

}).call(this);
