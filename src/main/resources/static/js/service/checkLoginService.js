kyCmsApp.service('checkLoginStateService', function($http) {
    this.checkLoginState = function(){
     return  $http.get('/getMenuAndUserName');
    }
}); 