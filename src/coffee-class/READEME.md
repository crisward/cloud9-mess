# Coffeescript Classes as Controllers

This example show how you can pass a coffeescript class to a controller.

The dependency inject works by attaching the values to the constructor, this actually
gives a good place to put initialisation code.

This could be further abstracted (and made easier to test) by using browserify to 
pull the class into it's own file


`module.coffee`

```coffeescript

require 'angular'

module.exports = angular.module 'coffeeClass',[]

.directive 'coffeeClass',->
  template: require './coffee-class.jade'
  controllerAs: 'cc'
  controller: require 'controller.coffee'

```

`controller.coffee`

```coffeescript
module.exports = 
  class coffeeClass
    things: ['one','two','three']
    item: ""
    
    constructor: ($rootScope)->
      console.log 'app started',@things
      
    add: ->
      @things.push(@item) if(@item)
      @item = ""
```
