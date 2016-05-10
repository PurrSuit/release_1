angular.module('starter.services', ['ngResource'])


.factory('LogInFactory', function($resource) {
  return $resource('http://localhost:3000/login/signin')
})

.factory('ServerQuests', function($resource) {
  return $resource('http://localhost:3000/quests/all.json')
})

.factory('ServerAchievements', function($resource){
  return $resource('http://localhost:3000/achievements/all.json')
})
