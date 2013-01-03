define ["d3"],
	(d) ->
		draw = (data) ->
      "use strict"
        
      d.select("body") 
        .append("ul") 
        .selectAll("li") 
        .data(data) 
        .enter() 
        .append("li")
          .text (d) -> d.name + ": " + d.status

      d.selectAll("li") 
        .style("font-weight",
          (data) ->
            if data.status is "GOOD SERVICE" then "normal" else "bold"
        )



	  

