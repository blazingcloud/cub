cub.controller('SessionsController', function ($scope, $http, $location) {
  $scope.sessions = [];
  $scope.gridOptions = {
    data: 'sessions',
    columnDefs: [{ field: 'name', displayName: 'Session', width: 400, cellTemplate: '<div><a href="{{row.entity[\'link\']}}">{{row.entity[\'name\']}}</a></div>' },
                     { field: 'start_time', displayName: 'Starts', width: 80 },
                     { field: 'location', cellClass: 'Location'} ]
  };

  $scope.updateSessions = function () {
    $http.get('/sessions.json').success(function (data, status, headers, config) {
      $scope.sessions = data;
    });
  };

  $scope.updateSessions();

  $scope.eventPath = function () {
    var re = /\/events\/(\d+)/;
    return window.location.pathname.match(re)[1];
  };

  $scope.addSession = function () {
    $http.post('/sessions.json', {
      session: {
        "name": $scope.newSessionName
      },
      event_id: $scope.eventPath()
    }).success(function (data, status, headers, config) {
        $scope.updateSessions();
      });
    $scope.sessionName = '';
  };

});


