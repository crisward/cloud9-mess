module.exports = class thingsDB
  
  constructor:($http)->
    console.log 'http',$http
    @http = $http
  query:(cb)=>
    @http.get('/api/things').success (res)->
      cb(res)
