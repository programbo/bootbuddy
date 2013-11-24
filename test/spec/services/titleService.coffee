'use strict'

describe 'Service: titleService', () ->

  # load the service's module
  beforeEach module 'bootbuddyApp'

  # instantiate service
  titleService = {}
  beforeEach inject (_titleService_) ->
    titleService = _titleService_

  it 'should do something', () ->
    expect(!!titleService).toBe true
