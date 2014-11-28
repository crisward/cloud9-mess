require 'angular'

module.exports = angular.module 'coffeeMess',[]

.directive 'coffeeMess',->
  template:require './coffee-mess.jade'
  controller:'coffeeMess as cm'
  

.controller 'coffeeMess',->
  @things = []
  @item = ""
  @add = -> 
    @things.push(@item) if(@item)
    @item = ""
  