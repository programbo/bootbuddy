'use strict'

angular.module('bootbuddyApp')

  .factory 'metaService', ($document) ->

    {
      setContent: (name, content) ->
        metaTag = angular.element $document.find("meta[name=#{name}]")[0]
        metaTag.attr 'content', content
    }