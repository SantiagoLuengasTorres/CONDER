INSERT INTO `conder`.`rol` (`idrol`, `descripcion`) VALUES ('01', 'Administrador');
INSERT INTO `conder`.`rol` (`idrol`, `descripcion`) VALUES ('02', 'Vendedor ');
INSERT INTO `conder`.`rol` (`idrol`, `descripcion`) VALUES ('03', 'Cliente');
INSERT INTO `conder`.`rol` (`idrol`, `descripcion`) VALUES ('04', 'Proveedor');

INSERT INTO `conder`.`bodega` (`idbodega`, `designacion`, `ubicacion`, `entrada`) VALUES ('01', 'Bodega Principal', 'Cra 88d #6a-95', 'salud bucal, higiene íntima');

INSERT INTO `conder`.`ordencompra` (`idordenCompra`, `descripcion`, `fechaCompra`, `bodega_idbodega`) VALUES ('01', 'se realiza la orden de medivamentos y productos de aseo personal', '2023-01-01 15:', '01');

INSERT INTO `conder`.`administrador` (`idadministrador`, `ordenCompra_idordenCompra`, `rol_idrol`) VALUES ('01', '01', '01');

INSERT INTO `conder`.`categoria` (`idcategoria`, `descripcion`) VALUES ('01', 'Salud y medicamentos');
INSERT INTO `conder`.`categoria` (`idcategoria`, `descripcion`) VALUES ('02', 'Belleza');
INSERT INTO `conder`.`categoria` (`idcategoria`, `descripcion`) VALUES ('03', 'Cuidado Infantil');
INSERT INTO `conder`.`categoria` (`idcategoria`, `descripcion`) VALUES ('04', 'Cuidado Personal');
INSERT INTO `conder`.`categoria` (`idcategoria`, `descripcion`) VALUES ('05', 'Hogar');
INSERT INTO `conder`.`categoria` (`idcategoria`, `descripcion`) VALUES ('06', 'Mascotas');

INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('01', 'Alivio del dolor', '01');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('02', 'Dermatologicos', '01');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('03', 'Cuidado de la vista', '01');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('04', 'Cosmeticos', '02');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('05', 'Fragancias', '02');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('06', 'Cuidado de la piel', '02');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('07', 'Formulas infantiles', '03');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('08', 'Higiene del bebe', '03');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('09', 'Pañales y pañitos humedos', '03');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('10', 'Bienestar sexual', '04');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('11', 'Cuidado bucal', '04');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('12', 'Cuidado del cabello', '04');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('13', 'Detergentes y jabones', '05');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('14', 'Ambientadores', '05');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('15', 'Accesorios de limpieza', '05');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('16', 'Alimentos', '06');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('17', 'Salud e higiene', '06');
INSERT INTO `conder`.`subcategoria` (`idsubCategoria`, `descripcion`, `categoria_idcategoria`) VALUES ('18', 'Accesorios', '06');

INSERT INTO `conder`.`cliente` (`idcliente`, `rol_idrol`) VALUES ('01', '03');
INSERT INTO `conder`.`cliente` (`idcliente`, `rol_idrol`) VALUES ('02', '03');

INSERT INTO `conder`.`proveedor` (`idproveedor`, `rol_idrol`) VALUES ('01', '04');
INSERT INTO `conder`.`proveedor` (`idproveedor`, `rol_idrol`) VALUES ('02', '04');

INSERT INTO `conder`.`tipodocumento` (`idtipoDocumento`, `documento`, `numero`) VALUES ('01', 'C.C', ' 10547808');
INSERT INTO `conder`.`tipodocumento` (`idtipoDocumento`, `documento`, `numero`) VALUES ('02', 'T.I', '10516932');
INSERT INTO `conder`.`tipodocumento` (`idtipoDocumento`, `documento`, `numero`) VALUES ('03', 'C.E', '76307332');
INSERT INTO `conder`.`tipodocumento` (`idtipoDocumento`, `documento`, `numero`) VALUES ('04', 'C.C', '76323459');
INSERT INTO `conder`.`tipodocumento` (`idtipoDocumento`, `documento`, `numero`) VALUES ('05', 'C.C', '1033693473');

INSERT INTO `conder`.`usuario` (`idusuario`, `nombre`, `telefono`, `correo`, `usuario`, `contraseña`, `direccion`, `tipoDocumento_idtipoDocumento`, `rol_idrol`) VALUES ('01', 'Juan Garcia', '3214922056', 'Juan@gmail.com', '2313', MD5('g.\Qm5n|,d(>ZG@M~oz4{lk?f7@|2£)S'), 'Calle 97 sur', '01', '01');
INSERT INTO `conder`.`usuario` (`idusuario`, `nombre`, `telefono`, `correo`, `usuario`, `contraseña`, `direccion`, `tipoDocumento_idtipoDocumento`, `rol_idrol`) VALUES ('02', 'David Sosa', '3007796042', 'David@gmail.com', '2148', MD5('&ioR+oe*lP.~5m0b1P]vO>YWU6Du+Cu]'), 'Av 140 #2', '02', '02');
INSERT INTO `conder`.`usuario` (`idusuario`, `nombre`, `telefono`, `correo`, `usuario`, `contraseña`, `direccion`, `tipoDocumento_idtipoDocumento`, `rol_idrol`) VALUES ('03', 'Sebastian Diaz', '3142582530', 'Sebastian@gmail.com', '1420', MD5('£knYOv>sA}k%/W}(];RFw[CT2<8&5uH('), 'Carrera 28 sur', '03', '03');
INSERT INTO `conder`.`usuario` (`idusuario`, `nombre`, `telefono`, `correo`, `usuario`, `contraseña`, `direccion`, `tipoDocumento_idtipoDocumento`, `rol_idrol`) VALUES ('04', 'Laura Aguirre', '3112111620', 'Laura@gmail.com', '2156', MD5('QGRN=kh&W$]3F2cv2q@m-sK,<1R!pymn'), 'Av 92 # 69', '04', '03');
INSERT INTO `conder`.`usuario` (`idusuario`, `nombre`, `telefono`, `correo`, `usuario`, `contraseña`, `direccion`, `tipoDocumento_idtipoDocumento`, `rol_idrol`) VALUES ('05', 'Santiago Torres', '3213558125', 'Santiago@gmail.com', '8423', MD5('wCQQE49f.$g442c6%IFUy~7;dluTl%@P'), 'Calle 6d #88d', '05', '04');

INSERT INTO `conder`.`vendedor` (`idvendedor`, `rol_idrol`) VALUES ('01', '02');
INSERT INTO `conder`.`vendedor` (`idvendedor`, `rol_idrol`) VALUES ('02', '02');

INSERT INTO `conder`.`unidades` (`idunidades`, `descripcion`) VALUES ('01', 'Unidad');
INSERT INTO `conder`.`unidades` (`idunidades`, `descripcion`) VALUES ('02', 'Cajas');
INSERT INTO `conder`.`unidades` (`idunidades`, `descripcion`) VALUES ('03', 'Sachet');

INSERT INTO `conder`.`marca` (`idmarca`, `descripcion`) VALUES ('01', 'Colgate');
INSERT INTO `conder`.`marca` (`idmarca`, `descripcion`) VALUES ('02', 'Nivea');
INSERT INTO `conder`.`marca` (`idmarca`, `descripcion`) VALUES ('03', 'Huggies');

INSERT INTO `conder`.`producto` (`idproducto`, `denominacion`, `descripcion`, `referencia`, `fechaCaducidad`, `stock`, `precio`, `bodega_idbodega`, `unidades_idunidades`, `marca_idmarca`, `subCategoria_idsubCategoria`, `proveedor_idproveedor`) VALUES ('01', 'Crema dental', 'Limpieza dental.', '4455546', ' 2024-02-03 15:00:00', '20', '5000', '01', '01', '01', '11', '01');
INSERT INTO `conder`.`producto` (`idproducto`, `denominacion`, `descripcion`, `referencia`, `fechaCaducidad`, `stock`, `precio`, `bodega_idbodega`, `unidades_idunidades`, `marca_idmarca`, `subCategoria_idsubCategoria`, `proveedor_idproveedor`) VALUES ('02', 'Crema hidratante', 'proporciona a la piel el agua que necesitan', '6546145', ' 2025-01-10 15:00:00', '24', '12000', '01', '01', '02', '06', '01');
INSERT INTO `conder`.`producto` (`idproducto`, `denominacion`, `descripcion`, `referencia`, `fechaCaducidad`, `stock`, `precio`, `bodega_idbodega`, `unidades_idunidades`, `marca_idmarca`, `subCategoria_idsubCategoria`, `proveedor_idproveedor`) VALUES ('03', 'Pañales', ' prenda interior absorbente usada para higienizar', '2154778', ' 2024-03-03 15:00:00', '20', '3500', '01', '02', '03', '09', '01');

INSERT INTO `conder`.`factura` (`idfactura`, `facturaVenta`, `descripcionVenta`, `vendedor_idvendedor`, `cliente_idcliente`) VALUES ('01', '2023-01-01 10:30:00', 'Se realio la venta de una crema dental', '01', '02');
INSERT INTO `conder`.`factura` (`idfactura`, `facturaVenta`, `descripcionVenta`, `vendedor_idvendedor`, `cliente_idcliente`) VALUES ('02', '2023-01-01 11:00:00', 'Se realizo la venta de crema hidratante', '01', '01');
INSERT INTO `conder`.`factura` (`idfactura`, `facturaVenta`, `descripcionVenta`, `vendedor_idvendedor`, `cliente_idcliente`) VALUES ('03', '2023-01-01 20:10:00', 'Se realizo la venta de pañales', '02', '01');

INSERT INTO `conder`.`factura_has_producto` (`factura_idfactura`, `producto_idproducto`, `cantidad`, `denominacion`) VALUES ('01', '01', '1', 'Crema dental');
INSERT INTO `conder`.`factura_has_producto` (`factura_idfactura`, `producto_idproducto`, `cantidad`, `denominacion`) VALUES ('02', '02', '1', 'Crema hidratante');
INSERT INTO `conder`.`factura_has_producto` (`factura_idfactura`, `producto_idproducto`, `cantidad`, `denominacion`) VALUES ('03', '03', '1', 'Pañales');
