SELECT Nome AS Usuario, Telefones.descricao AS Telefone, Emails.descricao AS Email, CNHs.descricao AS CNH FROM Pessoas
RIGHT JOIN Telefones
ON Pessoas.idPessoa = Telefones.idPessoa
RIGHT JOIN Emails
ON Pessoas.idPessoa = Emails.idPessoa
RIGHT JOIN CNHs
ON Pessoas.idPessoa = CNHs.idPessoa
ORDER BY Nome desc;