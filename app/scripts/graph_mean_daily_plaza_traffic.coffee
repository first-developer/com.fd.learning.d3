define ["d3"],
	(d) ->
		draw = (data) ->
      "use strict"
        
      d.select("body") 
        .append("div")
        	.attr("class", "chart")
        .selectAll(".line")
        .data(data.cash)
        .enter()
        .append("div")
        	.attr("class", "line")

      d.selectAll("div.line")
        .append("div")
          .attr("class", "lbl")
          .text( (d) -> d.name )

      d.selectAll("div.line")
        .append("div")
          .attr("class", "bar")
        	.style("width", 
        		(d) -> "#{d.count/100}px" )
        	.style("outline", "1px solid white") 
        	.text( (d) -> Math.round(d.count) )
