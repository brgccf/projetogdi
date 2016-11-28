DROP TABLE tb_urna CASCADE CONSTRAINT;
DROP TABLE tb_caixao CASCADE CONSTRAINT;
DROP TABLE tb_cremacao CASCADE CONSTRAINT;
DROP TABLE tb_enterro CASCADE CONSTRAINT;
DROP TABLE tb_funcionario CASCADE CONSTRAINT;
DROP TABLE tb_falecido CASCADE CONSTRAINT;
DROP TABLE tb_motorista CASCADE CONSTRAINT;
DROP TABLE tb_cliente CASCADE CONSTRAINT;
DROP TABLE tb_carro CASCADE CONSTRAINT;
/


DROP TYPE tp_caixao FORCE;
DROP TYPE tp_urna FORCE;
DROP TYPE tp_enterro FORCE;
DROP TYPE tp_cremacao FORCE;
DROP TYPE tp_funeral FORCE;
DROP TYPE tp_falecido FORCE;
DROP TYPE tp_funcionario FORCE;
DROP TYPE tp_cliente FORCE;
DROP TYPE tp_motorista FORCE;
DROP TYPE tp_pessoa FORCE;
DROP TYPE tp_nome FORCE;
DROP TYPE tp_telefones FORCE;
DROP TYPE tp_telefone FORCE;
DROP TYPE tp_carro FORCE;
DROP TYPE tp_nt_convidado FORCE;
DROP TYPE tp_convidado FORCE;
DROP TYPE tp_produto FORCE;
/

CREATE OR REPLACE TYPE tp_nome AS OBJECT(
	primeiro_nome varchar2(20),
	nome_familia varchar2(20),
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2
);
/

CREATE OR REPLACE TYPE BODY tp_nome AS
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2 IS
		p VARCHAR2(41) := primeiro_nome || ' ' || nome_familia;
	BEGIN
		RETURN p;
	END;
END;
/

CREATE OR REPLACE TYPE tp_telefone AS OBJECT(
	numero VARCHAR2(100),
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2
);
/

CREATE OR REPLACE TYPE BODY tp_telefone AS
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2 IS
		p VARCHAR2(100) := numero;
	BEGIN
		RETURN p;
	END;
END;
/

CREATE OR REPLACE TYPE tp_telefones AS VARRAY(5) OF tp_telefone;
/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT(
	cpf varchar2(11),
	nome tp_nome,
	data_nascimento DATE,
	rg varchar2(9),
	telefones tp_telefones,
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2
) NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_pessoa AS
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2 IS
		p VARCHAR2(53) := cpf || ' ' || nome.toVarchar();
	BEGIN
		RETURN p;
	END;
END;
/

CREATE OR REPLACE TYPE tp_motorista UNDER tp_pessoa(
	cnh varchar2(11)
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa(
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa(
	salario DECIMAL(6,2),
	funcao varchar2(27),
	supervisor REF tp_funcionario
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_carro AS OBJECT(
	modelo varchar2(15),
	fabricante varchar2(20),
	placa varchar2(7),
	ano_fabricacao DATE,
	cor varchar2(10),
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2
) NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_carro AS
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2 IS
		p VARCHAR2(60) := placa || ' ' || fabricante || ' ' || modelo || ' ' || cor || ' ' || TO_CHAR(ano_fabricacao, 'YYYY');
	BEGIN
		RETURN p;
	END;
END;
/

CREATE OR REPLACE TYPE tp_falecido UNDER tp_pessoa(
	data_obito DATE,
	largura DECIMAL(6,2),
	altura DECIMAL(6,2),
	carro_transporte REF tp_carro,
	motorista_transporte REF tp_motorista,
	data_hora_transporte DATE
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_convidado AS OBJECT(
	id INTEGER,
	nome tp_nome,
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2
) NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_convidado AS
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2 IS
		p VARCHAR2(41) := nome.toVarchar();
	BEGIN
		return p;
	END;
END;
/

CREATE OR REPLACE TYPE tp_nt_convidado AS TABLE OF tp_convidado;
/

CREATE OR REPLACE TYPE tp_funeral AS OBJECT(
	id INTEGER,
	data DATE,
	data_contrato DATE,
	convidados tp_nt_convidado,
	falecido REF tp_falecido,
	cliente REF tp_cliente,
	MAP MEMBER FUNCTION toInteger RETURN INTEGER,
	MEMBER PROCEDURE listConvidados
) NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_funeral AS
	MAP MEMBER FUNCTION toInteger RETURN INTEGER IS
		p INTEGER := id;
	BEGIN
    		RETURN p;
	END;
	MEMBER PROCEDURE listConvidados IS


	BEGIN
		FOR idx IN 1 .. convidados.count LOOP
			DBMS_OUTPUT.PUT_LINE(convidados(idx).toVarchar());
		END LOOP;
	END;
END;
/

CREATE OR REPLACE TYPE tp_enterro UNDER tp_funeral(
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_cremacao UNDER tp_funeral(
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_produto AS OBJECT(
	numero_serie varchar2(4),
	preco DECIMAL(6, 2),
	cor varchar2(30),
	fabricante varchar2(100),
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2
) NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_produto AS
	MAP MEMBER FUNCTION toVarchar RETURN VARCHAR2 IS
		p VARCHAR2(4) := numero_serie;
	BEGIN
		RETURN p;
	END;
END;
/

CREATE OR REPLACE TYPE tp_urna UNDER tp_produto(
	peso DECIMAL(6, 2),
	volume DECIMAL(6, 2),
	cremacao REF tp_cremacao
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_caixao UNDER tp_produto(
	altura DECIMAL(6, 2),
	largura DECIMAL(6, 2),
	revestimento varchar2(100),
	enterro REF tp_enterro
) NOT FINAL;
/

CREATE TABLE tb_motorista OF tp_motorista(cpf PRIMARY KEY);

CREATE TABLE tb_cliente OF tp_cliente (cpf PRIMARY KEY);

CREATE TABLE tb_funcionario OF tp_funcionario(
	cpf PRIMARY KEY,
	supervisor WITH ROWID REFERENCES tb_funcionario
);
/

CREATE TABLE tb_carro OF tp_carro(
  placa PRIMARY KEY
);
/

CREATE TABLE tb_falecido OF tp_falecido(
	cpf PRIMARY KEY,
	carro_transporte WITH ROWID REFERENCES tb_carro,
	motorista_transporte WITH ROWID REFERENCES tb_motorista
);
/

CREATE TABLE tb_cremacao OF tp_cremacao(
  id PRIMARY KEY,
  falecido WITH ROWID REFERENCES tb_falecido,
	cliente WITH ROWID REFERENCES tb_cliente
) NESTED TABLE convidados STORE AS tb_convidados_cremacao;
/

ALTER TABLE tb_convidados_cremacao ADD CONSTRAINT pk_tb_convidados_cremacao PRIMARY KEY (id);

CREATE TABLE tb_enterro OF tp_enterro(
  id PRIMARY KEY,
	falecido WITH ROWID REFERENCES tb_falecido,
	cliente WITH ROWID REFERENCES tb_cliente
) NESTED TABLE convidados STORE AS tb_convidados_enterro;
/

ALTER TABLE tb_convidados_enterro ADD CONSTRAINT pk_tb_convidados_enterro PRIMARY KEY (id);

CREATE TABLE tb_urna OF tp_urna(
    numero_serie PRIMARY KEY,
    cremacao WITH ROWID REFERENCES tb_cremacao
);
/

CREATE TABLE tb_caixao OF tp_caixao(
    numero_serie PRIMARY KEY,
    enterro WITH ROWID REFERENCES tb_enterro
);
/
