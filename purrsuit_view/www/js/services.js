angular.module('starter.services', ['ngResource'])

// REST services
.factory('Quests', function($resource){
  return $resource('http://localhost:3000/quests/all.json')
});
