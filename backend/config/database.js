const mysql = require('mysql2');

function dbConnect() {

  // Create a connection to the MySQL server
  const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root', 
    password: 'root', 
    database: 'byte_bite' 
  });

  // Connect to the MySQL server
  conn.connect((err) => {
    if (err) {
      console.error('Error connecting to database: ' + err.stack);
      return;
    }
  });
  return conn;
}
