var express = require('express');
var connect = require('../utils/connection');
var router  = express.Router();

router.get('/', function (req, res) {
    connect.query('SELECT * FROM tbl_movies', function (err, result) {
        if (err) {
            throw err;
            console.log(err);
        } else {
            console.log(result);
            res.render('parents', {
                title  : 'Roku Videoapp - Parents',
                message: 'this is Parents mode!',
                data: result,
                parents: true,
                children: false
            });
        }
    });
});

module.exports = router;
