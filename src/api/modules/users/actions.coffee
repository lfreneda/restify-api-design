UserController = require './../../../app/controllers/users/controller'

module.exports =

  _call: (actionName, req, res, next) ->
    controller = new UserController #req.authenticatedUser
    controller[actionName] req.params, (err, result) ->
      next.ifError err
      res.send result

  get: (req, res, next) -> @_call 'getUser', req, res, next
  post: (req, res, next) -> @_call 'createUser', req, res, next
  put: (req, res, next) -> @_call 'updateUser', req, res, next
  del: (req, res, next) -> @_call 'deleteUser', req, res, next
