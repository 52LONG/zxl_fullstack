'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  // router.get('/', controller.home.index);
  // router.get('/list', controller.home.list);
  // router.get('/list', controller.home.list);
  require('./router/default')(app)
};
//extend middleware
