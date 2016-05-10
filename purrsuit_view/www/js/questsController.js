angular.module('starter')

// ALL -- Quests controller
.controller('QuestsCtrl', function($scope, ServerQuests) {
  ServerQuests.get(function(data) {
    console.log("SERVICES: Getting Quests data from server...");
    $scope.quests = data.quest;
  });
})

//SINGLE -- Quests Details controller
.controller('QuestCtrl', function($scope, $stateParams, ServerQuests) {
  ServerQuests.get(function(data){
    console.log("SERVICES: Getting Quest-Single data from server...");
    $scope.quests = data;
  })

  $scope.questId = $stateParams.questId;
})
