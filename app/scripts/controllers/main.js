'use strict';
angular.module('modalTestAppApp')
  .controller('mainController', function ($scope) {

        $scope.launch=function(){
            console.log("hello");
            $('#sample-modal').modal('show');
        };
  });
