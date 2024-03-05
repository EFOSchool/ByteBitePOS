const express = require('express');
const app = express();
const port = 3000;

// Serve static files (e.g., HTML, CSS, JavaScript) from the public directory
app.use(express.static('public', {
  setHeaders: (res, path, stat) => {
    if (path.endsWith('.css')) {
      res.setHeader('Content-Type', 'text/css');
    }
  },
}));

// Define a route to handle requests to the root URL
app.get('/', (req, res) => {
  // Send the HTML file as the response
  res.sendFile(__dirname + 'public/system.html');
});

// Start the server
app.listen(port, () => {
  console.log(`Server is listening at http://localhost:${port}`);
});
