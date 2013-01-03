window.app = {} || app

requirejs.config(

  appDir: '../'

  #enforceDefine: true

  baseUrl: 'js/'

  paths: 
#    jquery      : 'libs/jquery/jquery'
#    d3          : 'libs/d3/d3'
#    json        : 'libs/requirejs-plugins/json'
#    text        : 'libs/require/text'
#    res         : '../res'
    
    jquery      : 'libs/jquery/jquery'
    d3          : 'libs/d3/d3'
    json        : 'libs/requirejs-plugins/json'
    text        : 'libs/require/text'
    res         : '../res'


  shim:
    d3:
      exports: 'd3'   
)

# ---------------------------
# Train Status Board Example 
# ---------------------------
#require  ['jquery', 'd3', 'train_status_board'],
#  ( $
#    d 
#    draw_status     
#  ) ->
#    d.json 'res/service_status.json', draw_status


# ----------------------------------
# Graphing Mean Daily Plaza Traffic
# ----------------------------------
require  ['jquery', 'd3', 'graph_mean_daily_plaza_traffic'],
  ( $
    d
    draw 
  ) ->
    d.json 'res/mta_plazas.json', draw