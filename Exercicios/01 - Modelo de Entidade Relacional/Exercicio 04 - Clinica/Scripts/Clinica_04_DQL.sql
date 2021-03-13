-- Listar todos os veterinários (nome e CRMV) de uma clínica (razão social)
SELECT Veterinarios.nome AS Nome, Veterinarios.CRMV
FROM Clinicas
LEFT JOIN  Veterinarios
ON Veterinarios.idClinica = Clinicas.idClinica;

-- Listar todas as raças que começam com a letra S
SELECT * FROM Racas 
WHERE descricao LIKE 's%';

-- Listar todos os tipos de pet que terminam com a letra O
SELECT * FROM TiposPets 
WHERE descricao LIKE '%o';

-- Listar todos os pets mostrando os nomes dos seus donos
SELECT  idPet, nome FROM Pets

-- listar todos os atendimentos mostrando o nome do veterinário
-- que atendeu, o nome, a raça e o tipo do pet que foi atendido,
-- o nome do dono do pet e o nome da clínica onde o pet foi atendido

--SELECT Veterinarios.nome, Pets.nome, Racas.nome, TiposPets.descricao, Donos.descricao, Clinicas.RazãoSocial
SELECT Veterinarios.nome, Pets.nome, Racas.descricao, TiposPets.descricao, Donos.nome, Clinicas.RazãoSocial
FROM Atendimentos

LEFT JOIN Veterinarios
ON Veterinarios.idVeterinario = Atendimentos.idAtendimento

LEFT JOIN Clinicas
ON Clinicas.idClinica = Veterinarios.idClinica

LEFT JOIN Pets
ON Pets.idPet = Atendimentos.idPet

LEFT JOIN Racas
ON Racas.idRaca = Pets.idRaca

LEFT JOIN TiposPets
ON TiposPets.idTipoPet = Racas.idTipoPet

LEFT JOIN Donos
ON Donos.idDono = Pets.idDono;
