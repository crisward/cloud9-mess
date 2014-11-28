require 'angular'

module.exports = angular.module 'coffeeClass',[]

.directive 'coffeeClass',->
  template: require './coffee-class.jade'
  controller: 'coffeeClass as cc'
  
.controller 'coffeeClass', class coffeeClass
  things: ['one','two','three']
  item: ""
  constructor: ($rootScope)->
    console.log 'app started',@things
  add: ->
    @things.push(@item) if(@item)
    @item = ""
    
  
  
  
  