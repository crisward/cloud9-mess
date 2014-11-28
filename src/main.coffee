require 'angular'

angular.module 'app',[
  require('./test1/test1.coffee').name
  require('./coffee-mess/coffee-mess.coffee').name
  require('./coffee-class/coffee-class.coffee').name
  ]
angular.bootstrap document, ['app']