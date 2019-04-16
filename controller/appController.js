var request = require('request');
var Wifi = require('../model/appModel.js');

exports.list_all_wifis = function(req, res) {
  	Wifi.getAllWifi(function(err, wifi) {

    if (err)
	      res.send(err);
	      console.log('res', wifi);
	    res.send(wifi);
	});
};


exports.create_a_wifi = function(req, res) {

  request('https://www.datos.gov.co/resource/ffwn-j5cw.json', function (error, response, body) {
	  if (!error && response.statusCode == 200) {
	     var importedJSON = JSON.parse(body);
	     res.charset = 'utf-8';
	     for (var key in importedJSON) {
	     		var new_wifi= new Wifi(importedJSON[key]);
				Wifi.createWifi(new_wifi, function(err, wifi) {
			    
			    if (err)
			      	res.send(err);
			    	res.json(wifi);
			  	});

	     }
	  }
  });

  res.render('index', { title: 'Hey', message: 'Insertando datos de las wifi pereira!'});
};