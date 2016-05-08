angular.module('starter.services', ['ngResource'])

// REST services
.factory('Quest', function($resource){
  return $resource('http://localhost:3000/quests/all.json',
  {method: 'getQuest', q: '*'},
  {'query': {method: 'GET'}, isArray:true}
  )
});
