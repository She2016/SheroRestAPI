var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/shero', function(req, res, next) {
  res.render('shero', { title: 'Sheyarrrrrrrrrrrrr' });
});

module.exports = router;
