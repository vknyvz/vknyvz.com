'use strict';

describe('Filter: Filter', function () {

  // load the filter's module
  beforeEach(module('vApp'));

  // initialize a new instance of the filter before each test
  var Filter;
  beforeEach(inject(function ($filter) {
    Filter = $filter('Filter');
  }));

  it('is a functioning filter"', function () {
	  expect(!!Filter).toBe(true);
  });

});
