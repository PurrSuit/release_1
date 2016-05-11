angular.module('starter.services', ['ngResource'])


.factory('LogInFactory', function($resource) {
  return $resource('http://localhost:3000/login/signin')
})

.factory('SignUp', function($resource) {
  return $resource('http://localhost:3000/users/create')
})

.factory('ServerDeputies', function($resource){
  return $resource('http://localhost:3000/deputies/all')
})

.factory('ServerFindDeputy', function($resource){
  return $resource('http://localhost:3000/deputies/:id',{
    id: "@id"
  })
})

.factory('ServerQuests', function($resource) {
  return $resource('http://localhost:3000/quests/all.json')
})

.factory('ServerFindQuest', function($resource){
  return $resource('http://localhost:3000/quests/:id',{
    id: "@id"
  })
})

.factory('ServerSearchDeputies', function($resource){
  return $resource('http://localhost:3000/deputies/search/:toSearch', {
    toSearch: "@toSearch"
  })
})

.factory('ServerAchievements', function($resource){
  return $resource('http://localhost:3000/achievements/all.json')
})

.factory('ServerFindAchv', function($resource){
  return $resource('http://localhost:3000/achievements/:id',{
    id: "@id"
  })
})
