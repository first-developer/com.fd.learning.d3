window.app = {} || app

require(
  ["jquery", "d3", "bootstrap"]
  ($, d3, tb) ->
    console.log $  	
    console.log d3  	
    console.log tb  	

    app.modules.push mod for mod in [$, d3, tb]
    
    return 
)
