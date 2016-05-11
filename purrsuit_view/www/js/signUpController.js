angular.module('starter')

.controller('SignUpCtrl', function($scope, SignUp, $ionicPopup) {
  $scope.signUp = function(user){
    SignUp.save(user, function(user) {
      $ionicPopup.alert({
        title: 'Sucesso :D',
        template: 'Conta criada com êxito!'
      });
      console.log(user);
    }, function(error) {
      $ionicPopup.alert({
        title: 'Erro :(',
        template: 'Falha no cadastro, verifique se os dados estão corretos ou se o email ja foi cadastrado'
      });
    });
  }
})
