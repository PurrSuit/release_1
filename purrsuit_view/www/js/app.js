angular.module('starter', ['ionic', 'starter.controllers', 'ngResource'])

.run(function($ionicPlatform) {
  $ionicPlatform.ready(function() {
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

  // Sign Up
  .state('app.signUp', {
    url: '/signup',
    views: {
      'menuContent': {
        templateUrl: 'templates/signUp/signUp.html',
        controller: 'SignUpCtrl'
      }
    }
  })

  // Listing all quests
  .state('app.quests', {
    url: '/quests',
    views: {
      'menuContent': {
        templateUrl: 'templates/quests/quests.html',
        controller: 'QuestsCtrl'
      }
    }
  })

  // For a single quest
  .state('app.singleQuest', {
    url: '/quests/:questId',
    views: {
      'menuContent': {
        templateUrl: 'templates/quests/quest.html',
        controller: 'QuestCtrl'
      }
    }
  })

  // Listing all Achievements
  .state('app.Achievements', {
    url: '/achievements',
    views: {
      'menuContent': {
        templateUrl: 'templates/achievements/achievements.html',
        controller: 'AchievementsCtrl'
      }
    }
  })

  // Listing a single achievement
  .state('app.SingleAchievement', {
    url: '/achievements/:achvId',
    views: {
      'menuContent': {
        templateUrl: 'templates/achievements/singleAchievement.html',
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

  // Listing all deputies
  .state('app.browseDeputies', {
    url: '/browseDeputies',
    views: {
      'menuContent': {
        templateUrl: 'templates/deputies/browseDeputies.html',
        controller: 'DeputiesCtrl'
      }
    }
  })

  // Listing deputy's details
  .state('app.deputy', {
    url: '/deputy/:deputyId',
    views: {
      'menuContent': {
        templateUrl: 'templates/deputies/deputy.html',
        controller: 'DeputyCtrl'
      }
    }
  })

  // Deputys view is 'browseDeputies'
  $urlRouterProvider.otherwise('/app/login');
});
