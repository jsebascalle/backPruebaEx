module.exports = function(app) {
  var wifi = require('../controller/appController');

  app.get('/',wifi.create_a_wifi);

  // wifi Routes
  app.route('/map')
    .get(wifi.list_all_wifis);
};