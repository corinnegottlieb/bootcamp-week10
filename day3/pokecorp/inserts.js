const Sequelize = require('sequelize')
const sequelize = new Sequelize('mysql://corinnegottlieb:12345678@fs-bootcamp.cqc0oq2maxqm.us-west-2.rds.amazonaws.com/corinnegottlieb_db', {retry: {max: 10}})

const data = require('./poke_data.json')

// INSERT POKEMON_TYPE DATA TO POKEMON_TYPE TABLE
    
// let typesALL = []
// data.forEach(d=>typesALL.push(d.type))
// let types = new Set(typesALL)
// console.log(types)

// types.forEach(t=>
// sequelize
// .query(`INSERT INTO pokemon_type VALUES(null, '${t}')`)
// .then(function(result){
//     console.log(result)
// }))

// INSERT TOWN DATA TO TOWN TABLE
    
// let townsALL = []
// data.forEach(d => d.ownedBy.forEach(o => townsALL.push(o.town)))
// let towns = new Set(townsALL)

// towns.forEach(t=>
//     sequelize
//     .query(`INSERT INTO town VALUES(null, '${t}')`)
//     .then(function(result){
//         console.log(result)
//     }))

// INSERT TRAINER DATA TO TRAINER TABLE
    

// let trainersObj = {}
// data.forEach(d => d.ownedBy.forEach(o =>
//     !trainersObj[o.name] ?
//         trainersObj[o.name] = o.town :
//         null))
// let trainersArr = Object.keys(trainersObj).map(o => {
//     return {
//         name: o, town: trainersObj[o]
//     }
// })
// for (let i = 0; i < trainersArr.length; i++) {
//     if (trainersArr[i].town=== "Cerulean City") {
//         trainersArr[i].town= 1
//     }
//     if (trainersArr[i].town=== "Pewter City") {
//         trainersArr[i].town= 2
//     }
//     if (trainersArr[i].town=== "Pallet Town") {
//         trainersArr[i].town= 3
//     }
//     if (trainersArr[i].town=== "Little Italy") {
//         trainersArr[i].town= 4
//     }
//     if (trainersArr[i].town=== "Zedon") {
//         trainersArr[i].town= 5
//     }
    
// }


// trainersArr.forEach(t =>
//     sequelize
//         .query(`INSERT INTO trainer VALUES(null, '${t.name}', '${t.town}')`)
//         .then(function (result) {
//             console.log(result)
//         }))


// sequelize
// .query("SELECT * FROM town")
// .spread(function(results, metadata){
//     console.log(results)
// })

// sequelize
// .query("SELECT * FROM pokemon_type")
// .spread(function(results, metadata){
    //     console.log(results)
    // })
    
// INSERT POKEMON DATA TO POKEMON TABLE
    
    // const addPokemon = async function (data) {
    //     let pokemonType = await sequelize.query(`SELECT id FROM pokemon_type WHERE name = '${data.type}'`)
    //     // console.log(pokemonType)
    //     let typeID = pokemonType[0][0].id //assuming names are unique
    //     // console.log(typeID)

    //     sequelize
    //     .query(`INSERT INTO pokemon VALUES('${data.id}', '${data.name}', '${data.height}', '${data.weight}', '${typeID}')`)
    //     .then(function (result) {
    //         console.log(result)
    //     })
        
    // }
    
    // data.forEach(d=>addPokemon(d))

// INSERT POKEMON_TRAINER DATA TO POKEMON_TRAINER TABLE

    // const assignPokemon2Trainers = async function (pokemonName, trainerName) {
    //     let pokemonData = await sequelize.query(`SELECT id FROM pokemon WHERE name = '${pokemonName}'`)
    //     let trainerData = await sequelize.query(`SELECT id FROM trainer WHERE name = '${trainerName}'`)
    
    //     let pokemonID = pokemonData[0][0].id //assuming names are unique
    //     let trainerID = trainerData[0][0].id //remember tha we receive both an array of results and our metadata, hence the [0][0]
    
    //     //validating both student and teacher exist
    //     if (!(pokemonID && trainerID)) { return }
   
    //     sequelize.query(`
    //        INSERT INTO pokemon_trainer
    //         VALUES (${pokemonID}, ${trainerID})`)
    // }
    
    // data.forEach(d=>d.ownedBy.forEach(o=>assignPokemon2Trainers(d.name, o.name)))
 
    heaviest=()=>{
        sequelize
        .query("SELECT MAX(weight) FROM pokemon")
        .spread(function (results, metadata) {
            console.log(results)
        })
    }

    heaviest()

    trainersANDtowns=()=>{
        sequelize
        .query("SELECT name,town FROM trainer")
        .spread(function (results, metadata) {
            console.log(results)
        }) 
    }

    trainersANDtowns()