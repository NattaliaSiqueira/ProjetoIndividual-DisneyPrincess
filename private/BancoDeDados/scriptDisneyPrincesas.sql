CREATE DATABASE disney;
USE disney;

CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45),
    Sobrenome VARCHAR(45),
    email VARCHAR(45),
    telefone VARCHAR(45),
    CPF VARCHAR(45)
);

CREATE TABLE Princesa (
    idPrincesa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    personalidade VARCHAR(45),
    etnia VARCHAR(45),
    frase_iconica VARCHAR(45),
    dilema VARCHAR(45)
);

CREATE TABLE Filmes (
    idFilmes INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(45),
    sinopse VARCHAR(45),
    ano_lancamento YEAR,
    fkPrincesa INT,
    FOREIGN KEY (fkPrincesa) REFERENCES Princesa(idPrincesa)
);

CREATE TABLE Quiz_Perguntas (
    idPergunta INT PRIMARY KEY AUTO_INCREMENT,
    enunciado VARCHAR(245)
);

CREATE TABLE Respostas (
    idRespostas INT PRIMARY KEY AUTO_INCREMENT,
    Alternativa VARCHAR(45),
    fkPrincesa INT,
    fkQuiz INT,
    FOREIGN KEY (fkPrincesa) REFERENCES Princesa(idPrincesa),
    FOREIGN KEY (fkQuiz) REFERENCES Quiz_Perguntas(idPergunta)
);

CREATE TABLE Resultado (
    Usuario_idUsuario INT,
    fkRespostas INT,
    PRIMARY KEY (Usuario_idUsuario, fkRespostas),
    FOREIGN KEY (Usuario_idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (fkRespostas) REFERENCES Respostas(idRespostas)
);