var express = require("express");
var router = express.Router();
var database = require("../database/config");

router.post("/salvar", function (req, res) {
    quizController.salvar(req, res);
});


module.exports = router;
