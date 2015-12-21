'use strict';

describe('Service: service', function () {

  // load the service's module
  beforeEach(module('vApp'));

  // instantiate service
  var service;
  beforeEach(inject(function (_service_) {
    service = _service_;
  }));

  it('is a functioning service ', function () {
    expect(!!service).toBe(true);
  });

});
