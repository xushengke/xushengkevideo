var express = require('express');
var connect = require('../utils/connection');
var router  = express.Router();

router.get('/', function (req, res) {
    connect.query('SELECT * FROM tbl_movies WHERE movies_genre=2', function (err, result) {
        if (err) {
            throw err;
            console.log(err);
        } else {
            console.log(result);
            res.render('action', {
                title  : 'Roku Videoapp - Action Movies',
                message: 'Action Movies',
                data: result,
                parents: true,
                children: false
            });
        }
    });
});

module.exports = router;
