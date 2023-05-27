const express = require('express')
const routes = express.Router()

//GET ALL
routes.get('/', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) return res.send(err)

        conn.query('SELECT * FROM libros', (err, rows) => {
            if (err) return res.send(err)
            res.json(rows)
        })
    })
})

//GET ONE
|


routes.get('/:id', (req, res) => {
    const id = req.params.id;
    req.getConnection((err, conn) => {
        if (err) return res.send(err);
        conn.query('SELECT * FROM libros WHERE id = ?', [id], (err, rows) => {
            if (err) return res.send(err);
            res.json(rows);
        });
    });
});



//POST
routes.post('/', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) return res.send(err)

        conn.query('INSERT INTO libros set ?',[req.body], (err, rows) => {
            if (err) return res.send(err)
            res.send('Libro agregado')
        })
    })
})

//DELETE
routes.delete('/:id', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) return res.send(err)

        conn.query('DELETE FROM libros WHERE id = ?',[req.params.id], (err, rows) => {
            if (err) return res.send(err)
            res.send('Libro Eliminado')
        })
    })
})

//UPDATE 
routes.put('/:id', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) return res.send(err)

        conn.query('UPDATE libros set ? WHERE id = ?',[req.body,req.params.id], (err, rows) => {
            if (err) return res.send(err)
            res.send('Libro Actualizado')
        })
    })
})

module.exports = routes