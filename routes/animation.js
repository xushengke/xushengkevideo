var express = require('express');
var connect = require('../utils/connection');
var router  = express.Router();

router.get('/', function (req, res) {
    connect.query('SELECT * FROM tbl_movies WHERE movies_genre=3', function (err, result) {
        if (err) {
            throw err;
            console.log(err);
        } else {
            console.log(result);
            res.render('animation', {
                title  : 'Roku Videoapp - Animation Movies',
                message: 'Animation Movies',
                data: result,
                parents: true,
                children: false
            });
        }
    });
});

module.exports = router;
