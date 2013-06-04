$(document).ready(function(){
  $('#event_sessions').dataTable();
});


function SessionsController($scope) {
  $scope.sessions = [
    {name:'learn angular'},
    {name:'build an angular app'}];

  $scope.addSession = function() {
    // send to server
    // retrieve list from server
    // update $scope.sessions
    $scope.sessions.push({text:$scope.name});
    $scope.sessionName = '';
  };

}

