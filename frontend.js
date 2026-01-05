const http = require('http');

http.createServer(function (req, res) {
  res.end('Hello from Frontend-01');
}).listen(6000);

console.log('Frontend running on port 6000');
