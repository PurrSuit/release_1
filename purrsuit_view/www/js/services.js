angular.module('starter.services', ['ngResource'])

// REST services
// Create new file for .factory
.factory('Quest', function($resource) {
  return $resource('http://localhost:3000/quests/all.json')
})

.factory('LogInFactory', function($resource) {
  return $resource('http://localhost:3000/login/signin')
})
