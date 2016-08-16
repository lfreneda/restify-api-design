actions = require './actions'

module.exports =
  configureRoutes: (server) ->
    server.get '/users', actions.get
    server.get '/users/:id', actions.getAll
    server.post '/users', actions.post
    server.put '/users/:id', actions.put
    server.del '/users', actions.del
