-- ===========================
-- TABELA: Categorias
-- ===========================
CREATE TABLE Categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- ===========================
-- TABELA: Fornecedores
-- ===========================
CREATE TABLE Fornecedores (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    pais VARCHAR(80),
    contato VARCHAR(150),
    telefone VARCHAR(30),
    email VARCHAR(150)
);

-- ===========================
-- TABELA: Artefatos
-- ===========================
CREATE TABLE Artefatos (
    id_artefato INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    origem VARCHAR(100),
    ano_estimado INT,
    preco DECIMAL(10,2),
    estado_conservacao VARCHAR(100),
    id_categoria INT,
    id_fornecedor INT,
    data_aquisicao DATE,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor)
);

-- ===========================
-- TABELA: Clientes
-- ===========================
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf_cnpj VARCHAR(20),
    telefone VARCHAR(30),
    email VARCHAR(150),
    endereco VARCHAR(200)
);

-- ===========================
-- TABELA: Vendas
-- ===========================
CREATE TABLE Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_venda DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- ===========================
-- TABELA: Itens da Venda
-- ===========================
CREATE TABLE ItensVenda (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT NOT NULL,
    id_artefato INT NOT NULL,
    preco_vendido DECIMAL(10,2),
    FOREIGN KEY (id_venda) REFERENCES Vendas(id_venda),
    FOREIGN KEY (id_artefato) REFERENCES Artefatos(id_artefato)
);

-- ===========================
-- TABELA: Restaurações
-- ===========================
CREATE TABLE Restauracoes (
    id_restauracao INT AUTO_INCREMENT PRIMARY KEY,
    id_artefato INT NOT NULL,
    restaurador VARCHAR(150),
    descricao_servico TEXT,
    custo DECIMAL(10,2),
    data_restauracao DATE,
    FOREIGN KEY (id_artefato) REFERENCES Artefatos(id_artefato)
);

-- ===========================
-- TABELA: Laudos
-- ===========================
CREATE TABLE Laudos (
    id_laudo INT AUTO_INCREMENT PRIMARY KEY,
    id_artefato INT NOT NULL,
    perito VARCHAR(150),
    descricao TEXT,
    data_laudo DATE,
    FOREIGN KEY (id_artefato) REFERENCES Artefatos(id_artefato)
);
