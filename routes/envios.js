const express = require('express')
const routes = express.Router()

//GET ALL
routes.get('/', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) return res.send(err);

        conn.query('SELECT * FROM envios', (err, rows) => {
            if (err) return res.send(err);
            res.json(rows);
        });
    });
});

//GET ONE
routes.get('/:id_envio', (req, res) => {
    const IdEnvio = req.params.id_envio;
    req.getConnection((err, conn) => {
        if (err) return res.send(err);
        conn.query('SELECT * FROM envios WHERE id_envio = ?', [IdEnvio], (err, rows) => {
            if (err) return res.send(err);
            res.json(rows);
        });
    });
});

//POST
routes.post('/', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) return res.send(err);

        conn.query('INSERT INTO envios SET ?', [req.body], (err, rows) => {
            if (err) return res.send(err);
            res.send('Envio Registrado');
        });
    });
});

//DELETE
routes.delete('/:id_envio', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) return res.send(err);

        conn.query('DELETE FROM envios WHERE id_envio = ?', [req.params.id_envio], (err, rows) => {
            if (err) return res.send(err);
            res.send('Envio Eliminado');
        });
    });
});

//UPDATE 
routes.put('/:id_envio', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) return res.send(err);

        conn.query('UPDATE envios SET ? WHERE id_envio = ?', [req.body, req.params.id_envio], (err, rows) => {
            if (err) return res.send(err);
            res.send('Envio Actualizado');
        });
    });
});

module.exports = routes