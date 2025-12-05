function salvar(req, res) {
    var idUsuario = req.body.idUsuario;
    var respostas = req.body.respostas;

    quizModel.salvar(idUsuario, respostas)
        .then(r => res.json(r))
        .catch(e => {
            console.log("Erro ao salvar quiz:", e);
            res.status(500).json(e);
        });
}