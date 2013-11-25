'use strict'

describe 'Service: MetaService', () ->

  # load the service's module
  beforeEach module 'bootbuddyApp'

  # instantiate service
  MetaService = {}
  doc = null
  beforeEach inject (_MetaService_) ->
    MetaService = _MetaService_

  it 'should set the meta description', ->
    metaTag = MetaService.setContent 'description', 'hello world'
    expect(angular.element(metaTag).attr 'content').toBe 'hello world'

  it 'should create a new meta tag if one does not exist', ->
    metaTag = MetaService.setContent 'notarealmetatag', 'hello world'
    expect(angular.element(metaTag).attr 'content').toBe 'hello world'
