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