restify = require 'restify'

server = restify.createServer {
  name: 'https://github.com/lfreneda/restify-api-design/'
  version: '1.0.0'
}

server.pre restify.pre.sanitizePath()
server.use restify.acceptParser(server.acceptable)
server.use restify.dateParser()
server.use restify.queryParser()
server.use restify.bodyParser()
server.use restify.gzipResponse()
server.use restify.fullResponse()

server.get '/', (req, res) -> res.send { app: server.name }

module.configureRoutes server for module in [
  require './modules/users/index'
]

server.listen 7777, () ->
  console.log '%s is listening at %s', server.name, server.url
