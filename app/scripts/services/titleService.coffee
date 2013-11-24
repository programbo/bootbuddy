'use strict'

angular.module('bootbuddyApp')
  .factory 'titleService', ($document) ->
    # Service logic
    prefix = suffix = title = ""

    # Public API here
    {
      setPrefix: ( p ) ->
        prefix = p

      getPrefix: () ->
        prefix

      setSuffix: ( s ) ->
        suffix = s

      getSuffix: () ->
        suffix

      setTitle: ( t ) ->
        title = "#{prefix}#{t}#{suffix}"

        $document.prop 'title', title

      getTitle: () ->
        $document.prop 'title'
    }