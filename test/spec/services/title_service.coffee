'use strict'

describe 'Service: TitleService', () ->

  # load the service's module
  beforeEach module 'bootbuddyApp'

  # instantiate service
  TitleService = {}
  doc = null
  beforeEach inject (_TitleService_, $document) ->
    TitleService = _TitleService_
    doc = $document

  it 'should set the page title', ->
    TitleService.setTitle 'Hello World'
    expect(doc.find('title').text()).toBe 'Hello World'

  it 'should save a title prefix', ->
    TitleService.setPrefix 'This is a prefix'
    expect(TitleService.getPrefix()).toBe 'This is a prefix'

  it 'should save a title suffix', ->
    TitleService.setSuffix 'This is a suffix'
    expect(TitleService.getSuffix()).toBe 'This is a suffix'

  it 'should prepend the prefix to a title', ->
    TitleService.setPrefix 'Hello '
    TitleService.setTitle 'World'
    expect(doc.find('title').text()).toBe 'Hello World'

  it 'should append the suffix to a title', ->
    TitleService.setSuffix ' World'
    TitleService.setTitle 'Hello'
    expect(doc.find('title').text()).toBe 'Hello World'

  it 'should allow both a prefix and a suffix', ->
    TitleService.setPrefix 'Prefix'
    TitleService.setSuffix 'Suffix'
    TitleService.setTitle 'Title'
    expect(doc.find('title').text()).toBe 'PrefixTitleSuffix'
