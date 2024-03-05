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

const conn = dbConnect();

function printItems() { 
    var sql = 'SELECT * FROM items';
    conn.query(sql, function (err, results) {
        if (err) throw err;
        console.log(result);
        // iterate over the rows in the result
        results.forEach(item => {
            // getting attributes of the item
            const name = item.name;
            const price = item.price;
            const category = item.category;

            // create outer div
            const itemDiv = document.createElement("div");

            // specify class
            itemDiv.classList.add("item");

            // add other items
            // backtick is used as template literals in Javascript
            itemDiv.innerHTML = `
                <h1>${item.name}</h1>
                ${item.price}
            `;

            // need to add div to html
            CSSContainerRule.appendChild(itemDiv);
        });
    });
}
