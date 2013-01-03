(function() {

  define(["d3"], function(d) {
    var draw;
    return draw = function(data) {
      "use strict";
      d.select("body").append("div").attr("class", "chart").selectAll(".line").data(data.cash).enter().append("div").attr("class", "line");
      d.selectAll("div.line").append("div").attr("class", "lbl").text(function(d) {
        return d.name;
      });
      return d.selectAll("div.line").append("div").attr("class", "bar").style("width", function(d) {
        return "" + (d.count / 100) + "px";
      }).style("outline", "1px solid white").text(function(d) {
        return Math.round(d.count);
      });
    };
  });

}).call(this);
