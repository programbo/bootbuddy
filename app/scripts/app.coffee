'use strict'

angular.module('bootbuddyApp', [
  'ngCookies',
  'ngSanitize',
  'ui.router'
])
  .config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise '/home'
    $stateProvider
      .state('home',
        url: '/home'
        templateUrl: 'views/main.html',
        controller: 'MainCtrl')
