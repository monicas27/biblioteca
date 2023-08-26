CREATE TABLE Autores (
    AutorID INT PRIMARY KEY,
    NomeAutor VARCHAR(100),
    Nacionalidade VARCHAR(50)
);

CREATE TABLE Editoras (
    EditoraID INT PRIMARY KEY,
    NomeEditora VARCHAR(100),
    Localizacao VARCHAR(50)
 );
 CREATE TABLE Livros (
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(200),
    AutorID INT,
    EditoraID INT,
    AnoPublicacao INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID),
    FOREIGN KEY (EditoraID) REFERENCES Editoras(EditoraID)
);
  