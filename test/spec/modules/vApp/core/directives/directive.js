'use strict';

describe('Directive: directive', function () {

  // load the directive's module
  beforeEach(module('vApp'));

  var element,
    scope;

  beforeEach(inject(function ($rootScope) {
    scope = $rootScope.$new();
  }));

  it('is a functioning directive', inject(function ($compile) {    
  }));
});
