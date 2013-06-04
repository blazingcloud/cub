
cub.controller('SessionsController', function ($scope, $http, $location) {
  $scope.sessions = [];

  $scope.updateSessions = function () {
    $http.get('/sessions.json').success(function(data, status, headers, config) {
      $scope.sessions = data;
      $scope.gridOptions = { data: 'sessions' }
  });
  };

  $scope.updateSessions();

  $scope.gridOptions = { data: 'sessions' };

    $scope.eventPath = function() {
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


