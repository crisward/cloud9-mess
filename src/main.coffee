require 'angular'

angular.module 'app',[
  require('./test1/test1.coffee').name
  ]
angular.bootstrap document, ['app']