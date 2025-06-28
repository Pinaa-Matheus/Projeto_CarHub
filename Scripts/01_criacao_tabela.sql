-- ⚠️ Atenção: Execute um script por vez e na ordem correta para evitar erros de relacionamento entre as tabelas.

-------- Criando tabelas --------
CREATE TABLE Marcas (
    ID_Marca INT PRIMARY KEY AUTO_INCREMENT,
    NomeMarca VARCHAR(100) NOT NULL
);
-------- Tabela de Modelos --------
CREATE TABLE Modelos (
    ID_Modelo INT PRIMARY KEY AUTO_INCREMENT,
    ID_Marca INT NOT NULL,
    NomeModelo VARCHAR(100) NOT NULL,
    Foreign Key (ID_Marca) REFERENCES Marcas(ID_Marca)
);

-------- Tabela de Veículos --------
CREATE TABLE Veiculos (
    ID_Veiculo INT PRIMARY KEY AUTO_INCREMENT,
    ID_Modelo INT NOT NULL,
    Ano INT NOT NULL,
    Cor VARCHAR(50),
    Chassi VARCHAR(100) UNIQUE NOT NULL,
    PrecoVenda DECIMAL(10,2) NOT NULL,
    Status ENUM('Disponível', 'Vendido', 'Reservado') DEFAULT 'Disponivel',
    Foreign Key (ID_Modelo) REFERENCES Modelos(ID_Modelo)
);

-------- Tabela de Vendedores --------
CREATE TABLE Vendedores (
    ID_Vendedor INT PRIMARY KEY AUTO_INCREMENT,
    NomeCompleto VARCHAR(150) NOT NULL,
    Matricula VARCHAR(50) UNIQUE NOT NULL
);

-------- Tabela Vendas --------
CREATE TABLE Vendas (
    ID_Venda INT PRIMARY KEY AUTO_INCREMENT,
    ID_Veiculo INT NOT NULL,
    ID_Vendedor INT NOT NULL,
    DataVenda DATE NOT NULL,
    ValorFinal DECIMAL(10,2) NOT NULL,
    GeneroCliente VARCHAR(20),
    Foreign Key (ID_Veiculo) REFERENCES Veiculos(ID_Veiculo),
    Foreign Key (ID_Vendedor) REFERENCES Vendedores(ID_Vendedor)
);