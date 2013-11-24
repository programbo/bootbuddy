'use strict'

angular.module('bootbuddyApp')
  .controller 'MainCtrl', ($scope, titleService, $timeout) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.doSomething = ->
      $timeout -> titleService.setTitle 'Splendid!'
