create database conder;
use conder;

create table bodega (
  idbodega int not null,
  designacion varchar(45) not null,
  ubicacion varchar(45) not null,
  entrada varchar(45) not null,
  primary key (idbodega));
 
create table ordencompra (
  idordenCompra int not null,
  descripcion varchar(255) not null,
  fechaCompra datetime not null,
  bodega_idbodega int not null,
  primary key (idordenCompra),
  constraint fk_ordenCompra_bodega1
    foreign key (bodega_idbodega)
    references  bodega (idbodega));

create table rol (
  idrol int not null,
  descripcion varchar(45) not null,
  primary key (idrol));

create table administrador (
  idadministrador int not null,
  ordenCompra_idordenCompra int not null,
  rol_idrol int not null,
  primary key (idadministrador, rol_idrol),
  constraint fk_administrador_ordenCompra1
    foreign key (ordenCompra_idordenCompra)
    references  ordencompra (idordenCompra),
  constraint fk_administrador_rol1
    foreign key (rol_idrol)
    references  rol (idrol)
ON DELETE NO ACTION
    ON UPDATE NO ACTION);

create table categoria (
  idcategoria int not null,
  descripcion varchar(45) not null,
  primary key (idcategoria));
 
create table cliente (
  idcliente int not null,
  rol_idrol int not null,
  primary key (idcliente, rol_idrol),
  constraint fk_cliente_rol1
    foreign key (rol_idrol)
    references rol (idrol)
ON DELETE NO ACTION
    ON UPDATE NO ACTION);

create table vendedor (
  idvendedor int not null,
  rol_idrol int not null,
  primary key (idvendedor, rol_idrol),
  constraint fk_vendedor_rol1
    foreign key (rol_idrol)
    references rol (idrol)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

create table factura (
  idfactura int not null,
  facturaVenta datetime not null,
  descripcionVenta varchar(255) not null,
  vendedor_idvendedor int not null,
  cliente_idcliente int not null,
  primary key (idfactura),
  constraint fk_factura_cliente1
    foreign key (cliente_idcliente)
    references cliente (idcliente),
  constraint fk_factura_vendedor1
    foreign key (vendedor_idvendedor)
    references vendedor (idvendedor));

create table marca (
  idmarca int not null,
  descripcion varchar(45) not null,
  primary key (idmarca));

create table proveedor (
  idproveedor int not null,
  rol_idrol int not null,
  primary key (idproveedor, rol_idrol),
  constraint fk_proveedor_rol1
    foreign key (rol_idrol)
    references rol (idrol)
ON DELETE NO ACTION
    ON UPDATE NO ACTION);

create table subcategoria (
  idsubCategoria int not null,
  descripcion varchar(45) not null,
  categoria_idcategoria int not null,
  primary key (idsubCategoria),
  constraint fk_subCategoria_categoria1
    foreign key (categoria_idcategoria)
    references categoria (idcategoria));
 
create table unidades (
  idunidades int not null,
  descripcion varchar(45) not null,
  primary key (idunidades));

create table producto (
  idproducto int not null,
  denominacion varchar(45) not null,
  descripcion varchar(255) not null,
  referencia int not null,
  fechaCaducidad datetime not null,
  stock varchar(45) not null,
  precio double not null,
  bodega_idbodega int not null,
  unidades_idunidades int not null,
  marca_idmarca int not null,
  subCategoria_idsubCategoria int not null,
  proveedor_idproveedor int not null,
  primary key (idproducto),
  constraint fk_producto_bodega1
    foreign key (bodega_idbodega)
    references bodega (idbodega),
  constraint fk_producto_marca1
    foreign key (marca_idmarca)
    references marca (idmarca),
  constraint fk_producto_proveedor1
    foreign key (proveedor_idproveedor)
    references proveedor (idproveedor),
  constraint fk_producto_subCategoria1
    foreign key (subCategoria_idsubCategoria)
    references subcategoria (idsubCategoria),
  constraint fk_producto_unidades1
    foreign key (unidades_idunidades)
    references unidades (idunidades));

create table factura_has_producto (
  factura_idfactura int not null,
  producto_idproducto int not null,
  cantidad int not null,
  denominacion varchar(45) not null,
  primary key (factura_idfactura, producto_idproducto),
  constraint fk_factura_has_producto_factura1
    foreign key (factura_idfactura)
    references factura (idfactura),
  constraint fk_factura_has_producto_producto1
    foreign key (producto_idproducto)
    references producto (idproducto));

create table tipodocumento (
  idtipoDocumento int not null,
  documento varchar(45) not null,
  numero int not null,
  primary key (idtipoDocumento));

create table usuario (
  idusuario int not null,
  nombre varchar(45) not null,
  telefono varchar(45) not null,
  correo varchar(45) not null,
  usuario varchar(45) not null,
  contraseña varchar(45) not null,
  direccion varchar(45) not null,
  tipoDocumento_idtipoDocumento int not null,
  rol_idrol int not null,
  primary key (idusuario, tipoDocumento_idtipoDocumento, rol_idrol),
  constraint fk_usuario_rol1
    foreign key (rol_idrol)
    references rol (idrol),
  constraint fk_usuario_tipoDocumento
    foreign key (tipoDocumento_idtipoDocumento)
    references tipodocumento (idtipoDocumento));