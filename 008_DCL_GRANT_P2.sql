-- Verificando as permiss�es do usu�rio "USR_MINI_CRM"
--VERIFICANDO USUARIO LOGADO
select SYSTEM_USER;

--TESTE DE PERMIS�O LOGAR COM USUARIO USR_MINI_CRM

--VERIFICANDO USUARIO LOGADO
select SYSTEM_USER;

--TESTANDO SELECT
SELECT  * from AGENDA;

--TESTANDO SELECT *
SELECT * FROM USUARIOS

--TESTANDO SELECT *
SELECT MATRICULA, LOGIN FROM USUARIOS

-- TESTE SELECT
SELECT * FROM FOLLOW_UP_AGENDA

-- TESTE SELECT
SELECT * FROM CANAL_VENDAS_GER_VEND

--TESTANDO INSERT
INSERT INTO USUARIOS VALUES ('ROBERTOM',9,'123456','A','2')

--TESTANDO INSERT 
INSERT INTO CANAL_VENDAS_GER_VEND VALUES (1,9)

--TESTANDO UPDATE
UPDATE AGENDA SET SITUACAO='R' WHERE ID_AGENDA='9'

--TESTANDO UPDATE
UPDATE USUARIOS set LOGIN='ROBERTOR' WHERE MATRICULA='9';


--TESTANDO DELETE
DELETE FROM FOLLOW_UP_AGENDA WHERE ID_AGENDA='46';

--TESTANDO DELETE
DELETE FROM AGENDA WHERE ID_AGENDA='46';


--EXECUTANDO PROCEDURE COM USUARIO USR_MINI_CRM
EXEC PROC_AGENDA_MES

--EXECUTANDO PROCEDURE COM USUARIO USR_MINI_CRM
EXEC PROC_AGENDA_ANO

--TESTE DE EXECUTAR FUNCTION
SELECT * FROM FN_AGENDA('3') 

--TESTE DE EXECUTAR FUNCTION
SELECT * FROM FN_AGENDA_CLI('3') 

