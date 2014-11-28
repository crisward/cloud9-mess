module.exports = 
  class coffeeClass
    things: ['one','two','three','four']
    item: ""
    
    constructor: ($rootScope)->
      console.log 'app started',@things
      
    add: ->
      @things.push(@item) if(@item)
      @item = ""
    
    remove: (index)->
      @things.splice(index,1)