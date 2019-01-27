const Sequelize = require('sequelize')
const sequelize = new Sequelize('mysql://corinnegottlieb:12345678@fs-bootcamp.cqc0oq2maxqm.us-west-2.rds.amazonaws.com/corinnegottlieb_db')

// sequelize
//     .authenticate()
//     .then(() => {
//         console.log('Connection has been established successfully.');
//     })
//     .catch(err => {
//         console.error('Unable to connect to the database:', err);
//     })

// sequelize
// .query("SELECT * FROM company")
// .spread(function(results, metadata){
//     console.log(results)
// })

// sequelize
// .query("SELECT * FROM company")
// .spread(function(results, metadata){
//     results.forEach(c=> console.log(c.name))
// })


// sequelize
// .query("INSERT INTO company VALUES(null, 'Google', 'Tech', 10000) ")
// .then(function(result){
//     console.log(result)
// })

// const addStudent = async function (name, isBrill) {
//     let query = `INSERT INTO student VALUES (null, '${name}', ${isBrill})`
//     let result = await sequelize.query(query)
//     return result[0]
// }

// const addTeacher = async function (name, isTenured) {
//     let query = `INSERT INTO teacher VALUES (null, '${name}', ${isTenured})`
//     let result = await sequelize.query(query)
//     return result[0]
// }

// addStudent("Leonidis", 1)
// addTeacher("Yoda", 0)

// sequelize
// .query("SELECT * FROM student")
// .spread(function(results, metadata){
//     console.log(results)
// })

// sequelize
// .query("SELECT * FROM teacher")
// .spread(function(results, metadata){
//     console.log(results)
// })

sequelize
.query("SELECT * FROM student_teacher")
.spread(function(results, metadata){
    console.log(results)
})

// const enrollStudent = async function (studentName, teacherName) {
//   let studentData = await sequelize.query(`SELECT id FROM student WHERE name='${studentName}'`)
//   let teacherData = await sequelize.query(`SELECT id FROM teacher WHERE name='${teacherName}'`)
//   console.log(studentData)
//   let studentID = studentData[0][0].id
// let teacherID = teacherData[0][0].id
// console.log(teacherID)
// if(!(studentID && teacherID)){return}

// sequelize.query(`INSERT INTO student_teacher
// VALUES (${studentID}, ${teacherID})`)
// }

// enrollStudent("Leonidis", "Yoda")
