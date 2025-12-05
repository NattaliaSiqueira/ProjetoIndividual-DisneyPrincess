function salvar(idUsuario, respostas) {

    var instrucao = `
        INSERT INTO Resultado (Usuario_idUsuario, fkRespostas)
        VALUES 
        ${respostas.map(r => `(${idUsuario}, ${r})`).join(", ")};
    `;

    return database.executar(instrucao);
}