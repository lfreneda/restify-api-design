User = require './../../../../src/app/models/users/user'
expect  = require('chai').expect

describe 'User Model', ->
  it 'User should be sanitized when created', ->
    user = new User {
      name: 'Luiz Freneda'
      email: 'lfreneda@gmail.com'
      propertyShouldBeRemoved: 32
    }
    expect(JSON.stringify(user)).to.equal '{"name":"Luiz Freneda","email":"lfreneda@gmail.com"}'