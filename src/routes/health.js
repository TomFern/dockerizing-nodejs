const express = require('express');
const router = express.Router();
const db = require('../database');

router.get("/", function(req, res) {
    db.sequelize.authenticate()
        .then(() => res.status(200).send(JSON.stringify({ ok: true })))
        .catch( err => res.status(500).send(JSON.stringify(err)));
});

module.exports = router;

