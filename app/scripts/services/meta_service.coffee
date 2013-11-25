'use strict'

angular.module('bootbuddyApp')
  .factory 'MetaService', ($document) ->
    {
      setContent: (name, content) ->
        metaTag = $document.find("meta[name='#{name}']")
        if metaTag.length > 0
          metaTag.attr 'content', content
        else
          metaTag = angular.element "<meta name='#{name}' content='#{content}'></meta>"
          angular.element('head').append metaTag

        metaTag
    }