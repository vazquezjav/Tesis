// conecion con la base de datos

const mysql = require('mysql');

const mysqlConnection = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'tesis',
    port:3306
});

mysqlConnection.connect( error =>{
    if (error){
        console.log('Error conexion base ', error);
    }else{
        console.log('conexion exitosa')
    }
});

module.exports = mysqlConnection;