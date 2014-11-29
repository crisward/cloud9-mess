module.exports = class coffeeClass
  
  things: []
  item: ""
  
  constructor: (ThingsDB)->
    @things=[]
    ThingsDB.query (res)=> @things = res
    
  add: ->
    @things.push(@item) if(@item)
    @item = ""
  
  remove: (index)-> @things.splice(index,1)

  reset:-> @things=[]