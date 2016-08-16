controller = require './controller'

module.exports =
  configureRoutes: (server) ->
    server.get '/users', controller.get
    server.get '/users/:id', controller.getAll
    server.post '/users', controller.post
    server.put '/users/:id', controller.put
    server.patch '/users/:id', controller.patch
    server.del '/users', controller.del
