'use strict'

describe 'Service: metaService', () ->

  # load the service's module
  beforeEach module 'bootbuddyApp'

  # instantiate service
  metaService = {}
  beforeEach inject (_metaService_) ->
    metaService = _metaService_

  it 'should do something', () ->
    expect(!!metaService).toBe true
