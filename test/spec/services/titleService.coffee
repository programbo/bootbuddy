'use strict'

describe 'Service: titleService', () ->

  # load the service's module
  beforeEach module 'bootbuddyApp'

  # instantiate service
  titleService = {}
  doc = null
  beforeEach inject (_titleService_, $document) ->
    titleService = _titleService_
    doc = $document

  it 'should set the page title', ->
    titleService.setTitle 'Hello World'
    expect(doc.find('title').text()).toBe 'Hello World'

  it 'should save a title prefix', ->
    titleService.setPrefix 'This is a prefix'
    expect(titleService.getPrefix()).toBe 'This is a prefix'

  it 'should save a title suffix', ->
    titleService.setSuffix 'This is a suffix'
    expect(titleService.getSuffix()).toBe 'This is a suffix'

  it 'should prepend the prefix to a title', ->
    titleService.setPrefix 'Hello '
    titleService.setTitle 'World'
    expect(doc.find('title').text()).toBe 'Hello World'

  it 'should append the suffix to a title', ->
    titleService.setSuffix ' World'
    titleService.setTitle 'Hello'
    expect(doc.find('title').text()).toBe 'Hello World'

  it 'should allow both a prefix and a suffix', ->
    titleService.setPrefix 'Prefix'
    titleService.setSuffix 'Suffix'
    titleService.setTitle 'Title'
    expect(doc.find('title').text()).toBe 'PrefixTitleSuffix'
