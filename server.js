const express =  require('express')
const mysql = require('mysql')
const myconn = require('express-myconnection')
const routes = require('./routes/envios')
const cors = require('cors')

const app = express()
app.set ('port', process.env.PORT || 9001 )

const dboptions = {
    host: 'localhost',
    PORT: 3306,
    user: 'root',
    password: '',
    database: 'db_libreria'
}

//middlewares
app.use(myconn(mysql, dboptions, 'single'))
app.use(express.json())
app.use(cors())

//routes
app.get('/', (req, res) => {
    res.send('Shipping Provider')
})

app.use('/envios', require('./routes/envios'))
app.use('/books', require('./routes/books'))


// Start the server
app.listen(app.get('port'), ()=> {
    console.log('Server is running on port', app.get('port'))
})

