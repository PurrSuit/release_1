angular.module('starter')

.controller('AchievementsCtrl', function($scope, ServerAchievements){
  ServerAchievements.get(function(data){
    console.log("SERVER: Getting achievements data from server...");
    $scope.achievements = data.achievement;
    console.log($scope.achievements);
  })
})

// 'ACHV' means 'achievement'
.controller('SingleACHV', function($scope, $stateParams, ServerAchievements){
  // Getting JSON from server
  ServerAchievements.get(function(data){
    $scope.achievements = data;
  });

  // Send id to scope
  $scope.achvId = $stateParams.achvId;
  console.log("SERVER: Achievement Id is " + $scope.achvId);
})
