CREATE TABLE Afiliados (
    IDNumero_Doc INT PRIMARY KEY IDENTITY,
    Tipo_Doc VARCHAR(2) NOT NULL,        
    Apellido1 VARCHAR(100) NOT NULL,     
    Apellido2 VARCHAR(100) NULL,        
    Nombres VARCHAR(150) NOT NULL,       
    Fecha_Nacimiento DATE NOT NULL, 
    Estado VARCHAR(20) NOT NULL,   
    Causal VARCHAR(100) NULL
);
 
CREATE TABLE Afiliados_Sat(
    IDNumero_Doc INT PRIMARY KEY IDENTITY,
    Tipo_Doc VARCHAR(2) NOT NULL,        
    Apellido1 VARCHAR(100) NOT NULL,     
    Apellido2 VARCHAR(100) NULL,        
    Nombres VARCHAR(150) NOT NULL,       
    Fecha_Nacimiento DATE NOT NULL,
    Regimen VARCHAR(50) NOT NULL,
    Tipo_Transaccion VARCHAR(2) NOT NULL,   
    Tipo_Afiliado VARCHAR(50) NULL
);
 
CREATE TABLE Afiliados_Ministerio(
    IDNumero_Doc INT PRIMARY KEY IDENTITY,
    Tipo_Doc VARCHAR(2) NOT NULL,        
    Apellido1 VARCHAR(100) NOT NULL,     
    Apellido2 VARCHAR(100) NULL,        
    Nombres VARCHAR(150) NOT NULL,       
    Fecha_Nacimiento DATE NOT NULL
);
 
ALTER TABLE Afiliados_Sat
ADD CONSTRAINT FK_Afiliados_Sat_Afiliados FOREIGN KEY (IDNumero_Doc)
REFERENCES Afiliados (IDNumero_Doc);
 
ALTER TABLE Afiliados_Ministerio
ADD CONSTRAINT FK_Afiliados_Ministerio_Afiliados FOREIGN KEY (IDNumero_Doc)
REFERENCES Afiliados (IDNumero_Doc);

INSERT INTO AFILIADOS(IDNumero_Doc,Tipo_Doc, Apellido1,Apellido2,Nombres,Fecha_Nacimiento,Estado,Causal)
values
('123','CC','Castro','Vargas','Maria Jose','05-09-2000','Activo')
('1234','CC','Gomez','Varela','Antonio','01-08-2001', 'ACTIVO','RS')
('12345','CC','Gutierres','Martinez','Marcela','01-07-1993', 'traslado')
('123456','CC','Fernadez','Miranda','Jose','01-06-1994', 'Cancelado','No acreditacion')
 
 
INSERT INTO Afiliados_Sat(IDNumero_Doc,Tipo_Doc, Apellido1,Apellido2,Nombres,Fecha_Nacimiento,Regimen,Tipo_Transaccion,Tipo_Afiliado )
values
('123','CC','Castro','Vargas','Maria Jose','05-09-2000','Contributivo','9','C')
('1234','CC','Gomez','Varela','Antonio','01-08-2001','Subsidiado',','6','C')
('12345','CC','Gutierres','Martinez','Marcela','01-07-1993','Contributivo','14','C')
('123456','CC','Fernadez','Miranda','Jose','01-06-1994', ''Contributivo','19','C')
('1234567','TI','Bernal','Rincon','Juan Felipe','01-02-2001', 'Subsidiado',','7','B')
 
INSERT INTO Afiliados_Ministerio(IDNumero_Doc,Tipo_Doc, Apellido1,Apellido2,Nombres,Fecha_Nacimiento )
values
('123','CC','Castro','Vargas','Maria Jose','05-09-2000')
('1234','CC','Gomez','Varela','Antonio','01-08-2001')
('12345','CC','Gutierres','Martinez','Marcela','01-07-1993')
('123456','CC','Fernadez','Miranda','Jose','01-06-1994')
('1234567','TI','Bernal','Rincon','Juan Felipe','01-02-2001'),
('12345678','PT','Franco','Jimenez','Jacinto','01-02-2001')


