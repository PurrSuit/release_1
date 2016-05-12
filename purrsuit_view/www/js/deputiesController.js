angular.module('starter')

.controller('DeputiesCtrl', function($scope, ServerDeputies) {
  ServerDeputies.get(function(data) {
      console.log("SERVICES: Getting Deputies data from server...")
      $scope.deputies = data.deputy;
    },
    function(error) {
      alert("Não foi possível estabelecer conexão com o servidor...");
      console.log("SERVICES: ERROR in getting Deputies data from server...");
    })
})

.controller('DeputyCtrl', function($scope, $stateParams, ServerFindDeputy) {
  var findId = $stateParams.deputyId;
  ServerFindDeputy.get({
      id: findId
    },
    function(data) {
      console.log("SERVICES: Getting Deputy (Id: " + findId + ") data from server...");
      $scope.deputy = data.deputy;
    },
    function(error) {
      alert("Não foi possível estabelecer conexão com o servidor...");
      console.log("SERVICES: ERROR in getting Deputy (Id: " + findId + ") data from server...");
    }
  )
})
