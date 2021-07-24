/*const http = require('http');
const app = require('./app'); //definir app que esta consumiendo

const port = process.env.PORT || 3000 || 80;; //definir el puerto
const server = http.createServer(app).listen(port);

//server.listen(port);*/

var fs = require('fs')
var app = require('./app');
var port = process.env.PORT || 3000 || process.env.VCAP_APP_PORT || 80;
var https = require('http');

const options = {
    key: fs.readFileSync('C:\\Users\\vazqu\\Desktop\\10mo\\Tesis\\certificados\\example.key'), // Replace with the path to your key
    cert: fs.readFileSync('C:\\Users\\vazqu\\Desktop\\10mo\\Tesis\\certificados\\example.crt') // Replace with the path to your certificate
}

app.use((req, res, next) => {
    res.send('<h1>HTTPS Works!</h1>');
});

https.createServer( app).listen(port,() => {
    console.log('Server listening on port ' + port);
});