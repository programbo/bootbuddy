'use strict'

angular.module('bootbuddyApp')
  .factory 'titleService', () ->
    # Service logic
    suffix = title = ""

    # Public API here
    {
      setSuffix: ( s ) ->
        suffix = s

      getSuffix: () ->
        suffix

      setTitle: ( t ) ->
        if suffix isnt ""
          title = t + suffix
        else
          title = t

        $document.prop 'title', title

      getTitle: () ->
        $document.prop 'title'
    }