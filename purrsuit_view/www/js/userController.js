angular.module('starter')

.controller('UserCtrl', function($scope, $rootScope, $state, SignUp, LogInFactory, $ionicPopup) {
  //Sign up
  $scope.signUp = function(user){
    console.log(user);
    SignUp.save({user:user}, function(user) {
      $ionicPopup.alert({
        title: 'Sucesso :D',
        template: 'Conta criada com êxito!'
      });
      console.log(user)
      $state.go('app.login')

    }, function(error) {
      $ionicPopup.alert({
        title: 'Erro :(',
        template: 'Falha no cadastro, verifique se os dados estão corretos ou se o email ja foi cadastrado'
      });
    });
  }

  //Log in
  $scope.signIn = function(user){
    LogInFactory.get(user, function(user) {
      /*$ionicPopup.alert({
        title: 'Sucesso',
        template: 'Login efetuado'
      });*/
      console.log(user);
      $rootScope.user = user.user;
      $state.go('app.userprofile')

    }, function(error) {
      console.log(error);
      $ionicPopup.alert({
        title: 'Erro',
        template: 'Falha no login'
      });
    });
  }

  $scope.currentUser = $rootScope.user;

})
