(function () {
    'use strict';

    angular
        .module('app')
        .controller('FoodListController', FoodListController);

    FoodListController.$inject = ['$scope', '$rootScope', '$http', '$location'];
    function FoodListController($scope, $rootScope, $http, $location) {
        var url = '/app-portal/menu';
        $http({
            method: 'GET',
            headers: {'Content-Type': 'application/x-www-form-urlencoded'},
            url: url
        }).then(function (response) {
            $scope.food = response.data;
        }, function (response) {
        });

        if (localStorage.getItem('cartItems')) {
            $scope.cartItems = JSON.parse(localStorage.getItem('cartItems'));
        } else {
            $scope.cartItems = [];
            localStorage.setItem('cartItems', '');
        }

        $scope.cartTotal = 0;
        checkCart();

        $scope.addToCart = function (id) {
            var selectedItem = findItems($scope.cartItems, $scope.food, id);
            if (selectedItem != null) {
                $scope.cartItems.push(selectedItem);
                checkCart();
                $scope.getTotal();
                $scope.updateCartStorage();
            }
        };

        $scope.updateCartStorage = function () {
            localStorage.setItem('cartItems', JSON.stringify($scope.cartItems));
        };

        $scope.placeOrder = function () {
            $http({
                method: 'POST',
                headers: {'Content-Type': 'application/json'},
                url: '/app-portal/api/commit',
                data: {
                    'commitInstances': [{
                        'id': 'NEW-demo$Order',
                        'food': $scope.cartItems
                    }]
                },
                params: {'s': localStorage.getItem('session_id')}
            }).then(function (response) {
                $scope.cartItems = [];
                $scope.updateCartStorage();
                checkCart();
                $scope.getTotal();
                $location.path('/orders');
            }, function (response) {
                if (response.status == 401) {
                    if (localStorage.getItem('username')) {
                        $rootScope.reauth(function(){
                            $scope.placeOrder()
                        });
                    }
                }
            });
        };

        $scope.removeFromCart = function (id) {
            for (var i = 0; i < $scope.cartItems.length; ++i) {
                if ($scope.cartItems[i].id == id)
                    $scope.cartItems.splice(i, 1);
            }
            checkCart();
            $scope.getTotal();
            $scope.updateCartStorage();
        };

        $scope.getTotal = function () {
            $scope.cartTotal = 0;
            for (var i = 0; i < $scope.cartItems.length; ++i) {
                $scope.cartTotal += parseInt($scope.cartItems[i].price);
            }
        };

        function checkCart() {
            $scope.emptyCart = $scope.cartItems.length == 0;
        }
    }

    angular
        .module('app')
        .controller('OrdersController', OrdersController);

    OrdersController.$inject = ['$rootScope', '$scope', '$http'];
    function OrdersController($rootScope, $scope, $http) {
        $scope.totals = [];
        $scope.getOrders = function () {
            $http({
                method: 'GET',
                headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                url: '/app-portal/api/query.json',
                params: {
                    's': localStorage.getItem('session_id'),
                    'e': 'demo$Order',
                    'q': 'select u from demo$Order u order by u.createTs',
                    'view': 'order-view'
                }
            }).then(function (response) {
                $scope.orders = timeConverter(response.data);
                $scope.calcTotals();
            }, function (response) {
                if (response.status == 401) {
                    if (localStorage.getItem('username')) {
                        $rootScope.reauth(function(){
                            $scope.getOrders();
                        });
                    }
                }
            });
        };
        $scope.getOrders();

        $scope.cancelOrder = function (id) {
            $http({
                method: 'POST',
                headers: {'Content-Type': 'application/json'},
                url: '/app-portal/api/commit',
                data: {
                    'commitInstances': [{
                        'id': id,
                        'status': '40'
                    }]
                },
                params: {
                    's': localStorage.getItem('session_id')
                }
            }).then(function (response) {
                for (var i = 0; i < $scope.cartItems.length; ++i) {
                    if ($scope.cartItems[i].id == id) {
                        $scope.cartItems[i].status = 40;
                    }
                }
            }, function (response) {
                if (response.status == 401) {
                    if (localStorage.getItem('username')) {
                        $rootScope.reauth(function(){
                            $scope.cancelOrder(id)
                        });
                    }
                }
            });
        };

        $scope.calcTotals = function () {
            for (var i = 0; i < $scope.cartItems.length; ++i) {
                var totalItem = 0;
                for (var j = 0; j < $scope.cartItems[i].food.length; ++j) {
                    totalItem = totalItem + parseInt($scope.cartItems[i].food[j].price);
                }
                $scope.totals.push(totalItem);
            }
        }
    }

    angular
        .module('app')
        .controller('LoginController', LoginController);

    LoginController.$inject = ['$rootScope', '$http', '$location'];
    function LoginController($rootScope, $http, $location) {
        var vm = this;
        vm.login = login;
        vm.username = 'demo';
        vm.password = 'demo';

        function login() {
            $http({
                method: 'POST',
                url: '/app-portal/api/login',
                data: {
                    'username': vm.username,
                    'password': vm.password,
                    'locale': 'en'
                },
                contentType: 'application/x-www-form-urlencoded'
            }).then(function (response) {
                localStorage.setItem('session_id', response.data);
                localStorage.setItem('username', vm.username);
                localStorage.setItem('password', vm.password);
                $location.path('/');
                $rootScope.checkLogin($rootScope);
            }, function (response) {
                if (response.status == 401) {
                    vm.authFailed = true;
                }
            });
        }
    }

    angular
        .module('app')
        .controller('MenuController', MenuController);

    MenuController.$inject = ['$rootScope', '$scope', '$location'];
    function MenuController($rootScope, $scope, $location) {
        $scope.authAction = function () {
            if (localStorage.getItem('session_id')) {
                $scope.logoutAction();
            } else {
                $scope.loginAction();
            }
        };

        $scope.logoutAction = function () {
            localStorage.removeItem('session_id');
            localStorage.removeItem('username');
            localStorage.removeItem('password');
            localStorage.removeItem('cartItems');
            $rootScope.checkLogin($rootScope);
            $location.path('/');
        };

        $scope.loginAction = function () {
            $rootScope.checkLogin($rootScope);
            $location.path('/login');
        };
    }
})();

function timeConverter(items) {
    for (var i = 0; i < items.length; ++i) {
        items[i].createTs = items[i].createTs.substring(0, items[i].createTs.indexOf('.'));
    }
    return items;
}

function findItems(currentCart, items, id) {
    for (var i = 0; i < items.length; ++i) {
        if (items[i].id == id) {
            for (var j = 0; j < currentCart.length; ++j) {
                if (currentCart[j].id == id)
                    return;
            }
            return items[i];
        }
    }
}