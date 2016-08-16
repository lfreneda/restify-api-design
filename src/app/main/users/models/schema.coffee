module.exports =
    type: 'object'
    strict: true
    properties:
      id:
        type: 'string'
        rules: ['trim']
      name:
        type: 'string'
        rules: ['trim']
      email:
        type: 'string'
        rules: ['trim', 'lower']
      loginCount:
        type: 'integer'
      isOwner:
        type: 'integer'
      isAdmin:
        type: 'boolean'