INSERT INTO Autores (AutorID, NomeAutor, Nacionalidade)
VALUES
    (1, 'Autor 1', 'País A'),
    (2, 'Autor 2', 'País B'),
    (3, 'Autor 3', 'País A');
INSERT INTO Editoras (EditoraID, NomeEditora, Localizacao)
VALUES
    (1, 'Editora X', 'Cidade A'),
    (2, 'Editora Y', 'Cidade B'),
    (3, 'Editora Z', 'Cidade A');

-- Inserir dados na tabela Livros
INSERT INTO Livros (LivroID, Titulo, AutorID, EditoraID, AnoPublicacao)
VALUES
    (1, 'Livro 1', 1, 1, 2020),
    (2, 'Livro 2', 2, 2, 2018),
    (3, 'Livro 3', 1, 3, 2022),
    (4, 'Livro 4', 3, 2, 2015);

SELECT Livros.Titulo, Autores.NomeAutor, Editoras.NomeEditora
FROM Livros
JOIN Autores ON Livros.AutorID = Autores.AutorID
JOIN Editoras ON Livros.EditoraID = Editoras.EditoraID;


SELECT Livros.Titulo, Livros.AnoPublicacao
FROM Livros
JOIN Editoras ON Livros.EditoraID = Editoras.EditoraID
WHERE Editoras.NomeEditora = 'Editora Y';


SELECT Livros.Titulo, Autores.NomeAutor
FROM Livros
JOIN Autores ON Livros.AutorID = Autores.AutorID
WHERE Autores.Nacionalidade = 'País A';
