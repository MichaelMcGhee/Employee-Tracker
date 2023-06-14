const mysql = require("mysql2");
const inquirer = require("inquirer");

const db = mysql.createConnection(
  {
    host: "localhost",
    user: "root",
    password: "root",
    database: "movies_db",
  },
  console.log(`Connected to the movies_db database.`)
);

inquirer
  .prompt([
    {
      name: "viewemployees",
      message: "What Would You Like To Do?",
      type: "list",
      choices: ["View All Employees", "Add Employee", "View All Roles", "Add Role", "View All Departments", "Add Department"],
    },
  ])

  .then((answers) => {
   if (answers.viewemployees == "View All Employees") {
      db.query(`select * from employee`, (err, res) => {
        if (err) throw err;
        console.table(res);
    });
   } else if (answers.viewroles == "View All Roles") {
      db.query(`select * from role`, (err, res) => {
        if (err) throw err;
        console.table(res);
      });
   } else if (answers.viewemployees == "View All Departments") {
        db.query(`select * from department`, (err, res) => {
          if (err) throw err;
          console.table(res);
      });  

  });
