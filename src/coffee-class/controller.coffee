module.exports = class coffeeClass
  
  things: []
  item: ""
  
  constructor: (ThingsDB)->
    @things=[]
    
  add: ->
    @things.push(@item) if(@item)
    @item = ""
  
  remove: (index)-> @things.splice(index,1)

  reset:-> @things=[]