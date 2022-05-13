--VERIFICANDO SE EXISTE LINKED SERVER NO BD
SELECT * FROM   sys.servers


--CRIANDO LINKED SERVER
EXEC master.dbo.sp_addlinkedserver 
                @server = N'LINK001', 
				@srvproduct=N'', 
				@provider=N'SQLNCLI', 
				@datasrc=N'SRV-DB-01\MSSQLSERVER002'

--CRIANDO USUARIO DO  LINKED SERVER
EXEC master.dbo.sp_addlinkedsrvlogin 
                @rmtsrvname=N'LINK001',
				@useself=N'False',
				@locallogin=NULL,
				@rmtuser=N'CONECTA',
				@rmtpassword='CONECTA'



--SELECIONANDO DADOS ATRAVES DO LINKED SERVER
--SELECT * FROM   NOME_LINKED_SERVER.NOME_BANCO.SCHEMA.TABELA
SELECT * FROM   LINK001.DB_CONN.dbo.PESSOAS

---ATUALIZADO DADOS ATRAVES DO LINKED SERVER
UPDATE LINK001.DB_CONN.dbo.PESSOAS SET NOME='TESTE UPDATE'
WHERE ID=5 

---INSERINDO DADOS ATRAVES DO LINKED SERVER
INSERT INTO LINK001.DB_CONN.dbo.PESSOAS (NOME) VALUES ('JACK')

--SELECIONANDO DADOS ATRAVES DO LINKED SERVER
SELECT * FROM   LINK001.DB_CONN.dbo.PESSOAS


--VERIFICANDO SE EXISTE LINKED SERVER NO BD
SELECT * FROM   sys.servers

--EXCLUINDO USUARIO LINKED SERVER

EXEC sp_droplinkedsrvlogin @rmtsrvname='LINK001',
                           @locallogin=NULL

--EXCLUINDO LINKED SERVER

EXEC sp_dropserver @server=N'LINK001', @droplogins='droplogins'