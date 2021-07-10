const http = require('http');
const app = require('./app'); //definir app que esta consumiendo

const port = process.env.PORT || 3000 ; //definir el puerto
const server = http.createServer(app);

server.listen(port);