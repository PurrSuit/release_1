angular.module('starter')

.controller('loginCtrl', function($scope, LogInFactory, $ionicPopup) {

  $scope.signIn = function(user) {
    console.log(user)
    LogInFactory.get(user);
  }
  $scope.signIn = function(user){
    LogInFactory.get(user, function(user) {
      $ionicPopup.alert({
        title: 'Sucesso :D',
        template: 'Login efetuado'
      });
      console.log(user);
    }, function(error) {
      $ionicPopup.alert({
        title: 'Erro :(',
        template: 'Falha no login'
      });
    });
  }
}
)
