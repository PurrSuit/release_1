angular.module('starter')

.controller('loginCtrl', function($scope, LogInFactory, $ionicPopup) {

  $scope.signIn = function(user) {
    console.log(user)
    LogInFactory.get(user);
  }
}
)
