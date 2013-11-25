'use strict'

angular.module('bootbuddyApp')
  .controller 'MainCtrl', ($scope, TitleService, $timeout) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.doSomething = ->
      $timeout -> TitleService.setTitle 'Splendid!'
