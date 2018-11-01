app.controller('CityIndexController',function($scope,$http,$sce)
{
    $scope.city_options = [];
    $scope.selected_city = {};
    $http.get("/cities.json").then(function success(data) {
        $scope.city_options = data.data;
    });

    $scope.show_city = function () {
      window.location.replace("/cities/" + $scope.selected_city.id)
    };

});