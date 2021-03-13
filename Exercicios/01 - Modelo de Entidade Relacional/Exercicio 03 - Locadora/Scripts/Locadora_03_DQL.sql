-- Listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
SELECT Clientes.Nome AS Usuario, Modelo.descricao AS Modelo, dataInicio AS 'Data Inicio', dataFim AS 'Data Fim'
FROM Alugueis
LEFT JOIN Clientes
ON Clientes.idCliente = Alugueis.idCliente
LEFT JOIN Veiculo
ON Veiculo.idVeiculo = Alugueis.idVeiculo
LEFT JOIN Modelo
ON Modelo.idModelo = Veiculo.idModelo;

-- Listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro
SELECT Clientes.Nome AS Usuario, Modelo.descricao AS Modelo, dataInicio AS 'Data Inicio', dataFim AS 'Data Fim'
FROM Alugueis
Left Join Clientes
ON Clientes.idCliente = Alugueis.idCliente
Left Join Veiculo
ON Veiculo.idVeiculo = Alugueis.idVeiculo
Left Join Modelo
ON Modelo.idModelo = Veiculo.idModelo;