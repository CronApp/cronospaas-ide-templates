// Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'Cronos' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
// 'custom.controllers' is found in js/controllers.js
// 'custom.dataset' is found in components/js/datasource.js
var app = (function() {
    return angular.module('MyApp', [
    'ngRoute',
    'ngResource',
    'ngSanitize',
    'custom.controllers', 
    'custom.services',
    'custom.datasource'
    ])
    .config(['$routeProvider', function($routeProvider) {
        // Route
        $routeProvider
        
        .when('/page/login', {
            controller: 'LoginController',
            templateUrl: 'views/login.view.html',
            controllerAs: 'vm'
        })

        .when('/page/home', {
            controller: 'HomeController',
            templateUrl: 'views/home.view.html',
            controllerAs: 'vm'
        })

        .when('/page/admin', {
            controller: 'AdminController',
            templateUrl: 'views/admin.view.html',
            controllerAs: 'vm'
        })
      
        .when('/page/:name*', {
            templateUrl: function(urlattr){
                return '/views/' + urlattr.name + '.view.html';
            }
        })
        
        // Default route
        .otherwise({
            redirectTo: '/page/login'
        });
    }])
    .run(run);
    
    
    
    run.$inject = ['$rootScope', '$location', '$http'];
    function run($rootScope, $location, $http) {
        $rootScope.$on('$locationChangeStart', function (event, next, current) {
            // redirect to login page if not logged in and trying to access a restricted page
            var restrictedPage = $.inArray($location.path(), ['/login']) === -1;
            var loggedIn = ($rootScope.globals && $rootScope.globals.currentUser);
            if (restrictedPage && !loggedIn) {
                $location.path('/page/login');
            }

        });
    }



}(window));