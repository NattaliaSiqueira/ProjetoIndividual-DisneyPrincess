CREATE DATABASE disney;
USE disney;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    senha VARCHAR(20)
);

CREATE TABLE princesa (
    idPrincesa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    personalidade VARCHAR(45),
    etnia VARCHAR(45),
    frase_iconica VARCHAR(45),
    dilema VARCHAR(45)
);

CREATE TABLE filmes (
    idFilmes INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(45),
    sinopse VARCHAR(45),
    ano_lancamento YEAR,
    fkPrincesa INT,
    FOREIGN KEY (fkPrincesa) REFERENCES Princesa(idPrincesa)
);

CREATE TABLE quiz_perguntas (
    idPergunta INT PRIMARY KEY AUTO_INCREMENT,
    alternativaA INT,
    alternativaB INT,
    alternativaC INT,
    alternativaD INT
);


CREATE TABLE resultado (
    idResultado INT PRIMARY KEY AUTO_INCREMENT,
    fkQuiz_perguntas INT,
    CONSTRAINT fkResultadoQuiz
    FOREIGN KEY (fkQuiz_perguntas) REFERENCES quiz_perguntas(idPergunta)
    
);

/*CREATE TABLE Resultado_Quiz (
    idResultado INT PRIMARY KEY AUTO_INCREMENT,
    idUsuario INT,
    princesa_final VARCHAR(45),

    pontosMoanaMulan INT,
    pontosBelaRapunzel INT,
    pontosCinderelaBrancaNeve INT,
    pontosMeridaTiana INT,
    
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);
*/
