module.exports = 
  class coffeeClass
    things: ['one','two','three']
    item: ""
    
    constructor: ($rootScope)->
      console.log 'app started',@things
      
    add: ->
      @things.push(@item) if(@item)
      @item = ""
    