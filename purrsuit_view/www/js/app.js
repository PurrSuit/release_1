// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
// 'starter.controllers' is found in controllers.js
angular.module('starter', ['ionic', 'starter.controllers', 'ngResource'])

.run(function($ionicPlatform) {
  $ionicPlatform.ready(function() {
    // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
    // for form inputs)
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
      cordova.plugins.Keyboard.disableScroll(true);

    }
    if (window.StatusBar) {
      // org.apache.cordova.statusbar required
      StatusBar.styleDefault();
    }
  });
})

.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider

    .state('app', {
    url: '/app',
    abstract: true,
    templateUrl: 'templates/menu.html',
    controller: 'AppCtrl'
  })

  // Listing all quests
  .state('app.quests', {
    url: '/quests',
    views: {
      'menuContent': {
        templateUrl: 'templates/quests.html',
        controller: 'QuestsCtrl'
      }
    }
  })

  // For a single quest
  .state('app.singleQuest', {
    url: '/quests/:questId',
    views: {
      'menuContent': {
        templateUrl: 'templates/quest.html',
        controller: 'QuestCtrl'
      }
    }
  })

  // Listing all Achievements
  .state('app.Achievements', {
    url: '/achievements',
    views: {
      'menuContent': {
        templateUrl: 'templates/achievements.html',
        controller: 'AchievementsCtrl'
      }
    }
  })

  // Listing a single achievement
  .state('app.SingleAchievement', {
    url: '/achievements/:achvId',
    views: {
      'menuContent': {
        templateUrl: 'templates/singleAchievement.html',
        controller: 'SingleACHV'
      }
    }
  })


  // Listing all users
  .state('app.users', {
    url: "/users",
    views: {
      'menuContent': {
        templateUrl: "templates/users.html",
        controller: 'UsersCtrl'
      }
    }
  })

  .state('app.login', {
    url: "/login",
    views: {
      'menuContent': {
        templateUrl: "templates/login.html",
        controller: 'loginCtrl'
      }
    }
  })

  .state('app.browse', {
      url: '/browse',
      views: {
        'menuContent': {
          templateUrl: 'templates/browse.html'
        }
      }
    })

    // if none of the above states are matched, use this as the fallback
    // Deputys view is 'browse'
  $urlRouterProvider.otherwise('/app/login');
});
