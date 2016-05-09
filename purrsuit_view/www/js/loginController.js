angular.module('starter')

.controller('loginCtrl', function($scope, LogInFactory) {

  $scope.signIn = function(user) {

    LogInFactory.get(user,function(data){},function(error){
      alert("ACA");


    });
  }
}
)
