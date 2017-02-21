describe('Controllers', function() {
  var scope;

  beforeEach(module('starter.controllers'));
  beforeEach(inject(function($rootScope,$controller) {
    scope = $rootScope.$new();
    $controller('PlaylistsCtrl',{$scope:scope});
  }));

  it('should have tests enabled',function() {
    console.log('testData');
    expect(scope.testData.test).toEqual(true);
  });
});
