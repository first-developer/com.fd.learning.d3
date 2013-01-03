(function() {

  define(["d3"], function(d) {
    var draw;
    return draw = function(data) {
      "use strict";
      d.select("body").append("ul").selectAll("li").data(data).enter().append("li").text(function(d) {
        return d.name + ": " + d.status;
      });
      return d.selectAll("li").style("font-weight", function(data) {
        if (data.status === "GOOD SERVICE") {
          return "normal";
        } else {
          return "bold";
        }
      });
    };
  });

}).call(this);
