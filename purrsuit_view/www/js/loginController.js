angular.module('starter')

.controller('loginCtrl', function($scope, LogInFactory, $ionicPopup) {

  $scope.signIn = function(user){
    LogInFactory.get(user, function(user) {
      $ionicPopup.alert({
        title: 'Sucesso',
        template: 'Login efetuado'
      });

      console.log(user);
    }, function(error) {
      console.log(error);
      $ionicPopup.alert({
        title: 'Erro',
        template: 'Falha no login'
      });
    });
  }
}
)
