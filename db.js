const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'employee_tracker',
  password: 'Newuser!1232April80!',
  port: 5432,
});

module.exports = {
  query: (text, params) => pool.query(text, params),
};