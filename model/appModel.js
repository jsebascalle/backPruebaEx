var sql = require('./db.js');

//Wifi object constructor
var Wifi = function(wifi){
    this.capacidad_de_usuarios_permitidos = wifi.capacidad_de_usuarios_permitidos;
    this.convenio = wifi.convenio;
    this.created_at = new Date();
};

Wifi.createWifi = function createWifi(newTask, result) {    
        sql.query("INSERT INTO wifis set ?", newTask, function (err, res) {
                
                if(err) {
                    console.log("error: ", err);
                    result(err, null);
                }
                else{
                    console.log(res.insertId);
                    result(null, res.insertId);
                }
            });           
};


Wifi.getAllWifi  = function getAllWifi(result) {
        sql.query("Select * from wifis", function (err, res) {

                if(err) {
                    console.log("error: ", err);
                    result(null, err);
                }
                else{
                  console.log('tasks : ', res);  

                 result(null, res);
                }
            });   
};

module.exports= Wifi;