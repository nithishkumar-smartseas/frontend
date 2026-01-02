const http = require('http');

http.createServer(function (req, res) {
  res.end('Hello from Frontend');
}).listen(3000);

console.log('Frontend running on port 3000');
