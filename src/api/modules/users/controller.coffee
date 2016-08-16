class UsersController
  get: (req, res, next) -> res.send 'oi'
  getAll: (req, res, next) -> res.send 'oi'
  post: (req, res, next) -> res.send 'oi'
  put: (req, res, next) -> res.send 'oi'
  patch: (req, res, next) -> res.send 'oi'
  del: (req, res, next) -> res.send 'oi'

module.exports = new UsersController()