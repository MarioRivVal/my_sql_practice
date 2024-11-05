CREATE DATABASE tiendaropa;
USE tiendaropa;
CREATE TABLE categorias(
ID_categoria INT PRIMARY KEY auto_increment,
nombre varchar(50) NOT NULL
);
CREATE TABLE productos(
ID_productos int PRIMARY KEY auto_increment,
precio DECIMAL (10,2) NOT NULL,
nombre VARCHAR(100) NOT NULL,
ID_categoria int,
FOREIGN KEY (ID_categoria) REFERENCES categorias(ID_categoria)
);

INSERT INTO categorias (nombre) VALUES ("camisas"), ("pantalones"),("accesorios");
INSERT INTO productos (nombre, precio,ID_categoria) VALUES ("camisa azul", 19.99, 1),("pantalon rojo", 39.99, 2),("sombrero",15.50,3);

SELECT Productos.Nombre AS Producto, Productos.Precio, Categorias.Nombre AS Categoria
FROM Productos
JOIN Categorias ON Productos.ID_Categoria = Categorias.ID_Categoria;