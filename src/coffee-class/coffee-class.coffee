require 'angular'

module.exports = angular.module 'coffeeClass',[]

.directive 'coffeeClass',->
  template: require './template.jade'
  controllerAs: 'cc'
  controller: require './controller.coffee'

.service 'ThingsDB', require './things.coffee'

    
  
  
  
  