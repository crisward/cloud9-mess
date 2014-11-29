http = require('http')
path = require('path')
express = require('express')
app = express()
server = http.createServer(app)

#app.engine('jade', require('jade').__express);

app.use(express.static('client'))
  
app.get '/',(req, res)->  
  res.render("index.jade")

app.get '/api/things',(req,res)->
  res.send(['one','two','three'])

server.listen process.env.PORT,process.env.IP, ->
  addr = server.address();
  console.log("Server listening at", addr.address + ":" + addr.port)