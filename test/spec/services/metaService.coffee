'use strict'

describe 'Service: metaService', () ->

  # load the service's module
  beforeEach module 'bootbuddyApp'

  # instantiate service
  metaService = {}
  doc = null
  beforeEach inject (_metaService_) ->
    metaService = _metaService_

  it 'should set the meta description', ->
    metaTag = metaService.setContent 'description', 'hello world'
    expect(angular.element(metaTag).attr 'content').toBe 'hello world'

  it 'should create a new meta tag if one does not exist', ->
    metaTag = metaService.setContent 'notarealmetatag', 'hello world'
    expect(angular.element(metaTag).attr 'content').toBe 'hello world'
