const express = require('express')
const mysql = require('mysql2')

const app = express()

const connection = mysql.createConnection({
    host: '172.17.0.2',
    user: 'root',
    password: '1q2w3e4r',
    database: 'myapi'
})

connection.connect();

app.get('/products', function (request, response) {
    connection.query('SELECT * FROM products', function (error, results) {
        if (error) {
            throw error
        }

        response.send(results.map(item => ({
            name: item.name,
            price: item.price
        })))
    })
})

app.listen(9001, '0.0.0.0', function () {
    console.log('Escutando na porta 9001')
})