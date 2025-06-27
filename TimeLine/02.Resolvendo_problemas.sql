
----------------------Tabela das marcas de veículos----------------------
CREATE TABLE Marcas (
    ID_Marca INT PRIMARY KEY AUTO_INCREMENT,
    NomeMarca VARCHAR(100) NOT NULL            
);
--NOT NULL é usado para a coluna não receber nenhum valor nulo

----------------------Tabela dos Vendedores da loja----------------------
CREATE TABLE Vendedores (
    ID_Vendedor INT PRIMARY KEY AUTO_INCREMENT,
    NomeCompleto VARCHAR(150) NOT NULL,
    Matricula VARCHAR(50) UNIQUE NOT NULL
);
--Como a matricula de cada vendedor não deve se repetir usei o UNIQUE para que todos os valores de uma coluna sejam únicos

----------------------Tabela dos veiculos cadastrados----------------------
CREATE TABLE Veiculos (
    ID_Veiculos INT PRIMARY KEY AUTO_INCREMENT,
    ID_Marca INT NOT NULL,
    Modelo VARCHAR(100) NOT NULL,
    Ano INT NOT NULL,
    Cor VARCHAR(50),
    Chassi VARCHAR(100) UNIQUE NOT NULL,
    PrecoVenda DECIMAL(10,2) NOT NULL,
    Status ENUM('Disponível', 'Vendido', 'Reservado') DEFAULT 'Disponível',
    FOREIGN KEY (ID_Marca) REFERENCES Marcas(ID_Marca)
);
--Usei o ENUM na coluna Status porque como são valores ja definidos é melhor para não dar nenhum conflito nas tabelas futuramente
--Tambem usei uma FK(Chave estrangeira)

----------------------Tabela de vendas realizadas-----------------------
CREATE TABLE Vendas (
    ID_Venda INT PRIMARY KEY AUTO_INCREMENT,
    ID_Veiculo INT NOT NULL,
    ID_Vendedor INT NOT NULL,
    DataVenda DATE NOT NULL,
    ValorFinal DECIMAL(10,2) NOT NULL,
    GeneroCliente VARCHAR(20),
    Foreign Key (ID_Veiculo) REFERENCES Veiculos(ID_Veiculos),
    Foreign Key (ID_Vendedor) REFERENCES Vendedores(ID_Vendedor)
);