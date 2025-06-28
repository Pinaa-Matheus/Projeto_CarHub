-- ⚠️ Atenção: Execute um script por vez e na ordem correta para evitar erros de relacionamento entre as tabelas.

--- Quantos Veiculos foram vendidos?---
SELECT Status, COUNT(*) AS Quantidade
FROM Veiculos
WHERE Status IN ('Vendido', 'Reservado')
GROUP BY Status;
--- Essa consulta foi durante a implementaçao dos dados da tabela vendas para eu saber quantos veiculos foram vendidos/reservados ---

--- Quantos carros foram vendidos/reservados e quantos estão disponiveis ---
SELECT Status, COUNT(*) AS Quantidade
FROM Veiculos
GROUP BY Status;

--- Quais modelos foram mais vendidos? ---
SELECT m.NomeMarca, COUNT(*) AS TotalVendidos
FROM Vendas v
JOIN Veiculos ve ON ve.ID_Veiculo = v.ID_Veiculo
JOIN Modelos mo ON mo.ID_Modelo = ve.ID_Modelo
JOIN Marcas m ON m.ID_Marca = mo.ID_Marca
GROUP BY m.NomeMarca
ORDER BY TotalVendidos DESC;

--- Qual foi a receita de cada vendedor? ---
SELECT vd.NomeCompleto, SUM(v.ValorFinal) AS ReceitaTotal
FROM Vendas v
JOIN Vendedores vd ON vd.ID_Vendedor = v.ID_Vendedor
GROUP BY vd.NomeCompleto
ORDER BY ReceitaTotal DESC;

--- Vendas por genero do cliente ---
SELECT GeneroCliente, COUNT(*) AS QuantidadeVendas
FROM Vendas
GROUP BY GeneroCliente;