(function () {
    'use strict';

    angular
        .module('app', ['ngRoute'])
        .config(config)
        .run(run);

    config.$inject = ['$routeProvider'];
    function config($routeProvider) {
        $routeProvider
            .when('/', {
                controller: 'FoodListController',
                templateUrl: 'view/menu.html',
                controllerAs: 'vm'
            })

            .when('/login', {
                controller: 'LoginController',
                templateUrl: 'view/login.html',
                controllerAs: 'vm'
            })

            .when('/orders', {
                controller: 'OrdersController',
                templateUrl: 'view/orders.html',
                controllerAs: 'vm'
            })

            .otherwise({ redirectTo: '/login' });
    }

    run.$inject = ['$rootScope', '$http', '$location'];
    function run($rootScope, $http, $location) {
        $rootScope.checkLogin = function () {
            if (localStorage.getItem('session_id')) {
                $rootScope.authenticated = true;
                $rootScope.loginButton = 'Logout';
            } else {
                $rootScope.authenticated = false;
                $rootScope.loginButton = 'Login';
            }
        };

        $rootScope.reauth = function (repeatFunction) {
            $http({
                method: 'POST',
                url: '/app-portal/api/login',
                data: {
                    'username': localStorage.getItem('username'),
                    'password': localStorage.getItem('password'),
                    'locale': 'en'
                },
                contentType: 'application/x-www-form-urlencoded'
            }).then(function (response) {
                localStorage.setItem('session_id', response.data);
                console.log('Session dead. Reauth');
                repeatFunction();
            }, function (response) {
                localStorage.removeItem('session_id');
                $location.path('/orders');
            });
        };

        $rootScope.checkLogin();
    }
})();