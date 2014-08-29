'use strict';

/**
 * @ngdoc function
 * @name modalTestAppApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the modalTestAppApp
 */
angular.module('modalTestAppApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
