UserController = require './../../../app/controllers/users/controller'

module.exports =
  get: (req, res, next) -> res.send 'oi'
  getAll: (req, res, next) -> res.send 'oi'

  post: (req, res, next) ->
    controller = new UserController #req.authenticatedUser
    controller.createUser req.params, (err, result) ->
      next.ifError err
      res.send result

  put: (req, res, next) ->
    controller = new UserController #req.authenticatedUser
    controller.updateUser req.params, (err, result) ->
      next.ifError err
      res.send result

  del: (req, res, next) ->
    controller = new UserController #req.authenticatedUser
    controller.deleteUser req.params, (err, result) ->
      next.ifError err
      res.send result