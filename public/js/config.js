(function() {

  window.app = {} ||  app;

  requirejs.config({
    appDir: '../',
    baseUrl: 'js/',
    paths: {
      jquery: 'libs/jquery/jquery',
      d3: 'libs/d3/d3',
      json: 'libs/requirejs-plugins/json',
      text: 'libs/require/text',
      res: '../res'
    },
    shim: {
      d3: {
        exports: 'd3'
      }
    }
  });

  require(['jquery', 'd3', 'graph_mean_daily_plaza_traffic'], function($, d, draw) {
    return d.json('res/mta_plazas.json', draw);
  });

}).call(this);
