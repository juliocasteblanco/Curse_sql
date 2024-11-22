CREATE TABLE Afiliados (
    IDNumero_Doc INTEGER PRIMARY KEY,  -- No autoincrementa, solo es clave primaria
    Tipo_Doc VARCHAR(2) NOT NULL,        
    Apellido1 VARCHAR(100) NOT NULL,     
    Apellido2 VARCHAR(100) NULL,        
    Nombres VARCHAR(150) NOT NULL,       
    Fecha_Nacimiento DATE NOT NULL, 
    Estado VARCHAR(20) NOT NULL,   
    Causal VARCHAR(100) NULL);

CREATE TABLE Sat(
    IDNumero_Doc INTEGER PRIMARY KEY,  -- No autoincrementa, solo es clave primaria
    Tipo_Doc VARCHAR(2) NOT NULL,        
    Apellido1 VARCHAR(100) NOT NULL,     
    Apellido2 VARCHAR(100) NULL,        
    Nombres VARCHAR(150) NOT NULL,       
    Fecha_Nacimiento DATE NOT NULL,
    Regimen VARCHAR(50) NOT NULL,
    Tipo_Transaccion VARCHAR(2) NOT NULL,   
    Tipo_Afiliado VARCHAR(50) NULL);
 
CREATE TABLE Ministerio(
    IDNumero_Doc INTEGER PRIMARY KEY,  -- No autoincrementa, solo es clave primaria
    Tipo_Doc VARCHAR(2) NOT NULL,        
    Apellido1 VARCHAR(100) NOT NULL,     
    Apellido2 VARCHAR(100) NULL,        
    Nombres VARCHAR(150) NOT NULL,       
    Fecha_Nacimiento DATE NOT NULL);


CREATE TABLE Relacion (
    IDNumero_Doc INTEGER NOT NULL,  -- Campo para la clave foránea
    Tipo_Doc VARCHAR(2) NOT NULL,
    Fuente_Ingreso VARCHAR(20) NOT NULL, -- Fuente puede ser 'Afiliados', 'Sat' o 'Ministerio'
    
    -- Definición de claves foráneas
    CONSTRAINT fk_afiliados
        FOREIGN KEY (IDNumero_Doc) REFERENCES Afiliados(IDNumero_Doc),
    CONSTRAINT fk_Sat
        FOREIGN KEY (IDNumero_Doc) REFERENCES Sat(IDNumero_Doc),
    CONSTRAINT fk_Ministerio
        FOREIGN KEY (IDNumero_Doc) REFERENCES Ministerio(IDNumero_Doc));


