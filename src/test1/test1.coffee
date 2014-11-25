require 'angular'

module.exports = angular.module 'test1',[]

.directive 'test1',->
  template:require './test1.jade'
  
  