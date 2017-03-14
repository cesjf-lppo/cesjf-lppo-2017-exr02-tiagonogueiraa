/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  aluno
 * Created: 13/03/2017
 */

CREATE TABLE reclamacao
(
id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS
IDENTITY,
nome VARCHAR(50) NOT NULL,
email VARCHAR(90) NOT NULL,
descricao VARCHAR(90) NOT NULL,
status INTEGER NOT NULL DEFAULT 0
);