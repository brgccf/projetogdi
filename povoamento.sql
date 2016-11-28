-- Pessoas Motoristas

INSERT INTO tb_motorista VALUES (tp_motorista('12323456352',tp_nome('Pedro', 'Rossi') , TO_DATE('12/03/1998', 'MM/DD/YYYY'), '45624301', tp_telefones(tp_telefone('12323456352'), tp_telefone('9879878787')), '123456789'));

INSERT INTO tb_motorista VALUES (tp_motorista('23452346345',tp_nome('Joao', 'Silveira') , TO_DATE('01/04/1997', 'MM/DD/YYYY'), '0283645', tp_telefones (tp_telefone('123111789')), '765431256'));

INSERT INTO tb_motorista VALUES (tp_motorista('13452432222',tp_nome('Junior', 'Bello'), TO_DATE('05/08/1993', 'MM/DD/YYYY'), '626356', tp_telefones(tp_telefone('928374657')), '125556789'));

INSERT INTO tb_motorista VALUES (tp_motorista('65543655536',tp_nome('Rafael', 'Rodrigues'), TO_DATE('06/09/1992', 'MM/DD/YYYY'), '82635', tp_telefones(tp_telefone('728374654')), '166656789'));

INSERT INTO tb_motorista VALUES (tp_motorista('12376845432',tp_nome('Maira', 'Lima') , TO_DATE('07/10/1991', 'MM/DD/YYYY'), '029836', tp_telefones(tp_telefone('162536478')), '123457779'));

INSERT INTO tb_motorista VALUES (tp_motorista('58746735663',tp_nome('Juliana', 'Farias') , TO_DATE('08/12/1990', 'MM/DD/YYYY'), '73646', tp_telefones(tp_telefone('726354789')), '123888789'));

INSERT INTO tb_motorista VALUES (tp_motorista('23455664764',tp_nome('Gabriel', 'Feitosa'), TO_DATE('09/01/1989', 'MM/DD/YYYY'), '6789054', tp_telefones(tp_telefone('635267846')),'101101101'));

INSERT INTO tb_motorista VALUES (tp_motorista('87567856787',tp_nome('Alberto', 'José') , TO_DATE('12/05/1990', 'MM/DD/YYYY'), '45622201', tp_telefones(tp_telefone('12888856352'), tp_telefone('9879878787')), '123456609'));

INSERT INTO tb_motorista VALUES (tp_motorista('00023455435',tp_nome('Manuel', 'Tobias') , TO_DATE('01/12/1996', 'MM/DD/YYYY'), '0113645', tp_telefones (tp_telefone('127777789')), '765432333'));

INSERT INTO tb_motorista VALUES (tp_motorista('76575400557',tp_nome('Cicero', 'Chaves') , TO_DATE('12/06/1993', 'MM/DD/YYYY'), '150053674', tp_telefones(tp_telefone('62224567')), '155522789'));

-- Pessoa Cliente

INSERT INTO tb_cliente VALUES (tp_cliente('63565476789', tp_nome('Divino', 'Neto') , TO_DATE('11/02/1997', 'MM/DD/YYYY'), '777666555', tp_telefones(tp_telefone('565542637'), tp_telefone('725372637'))));

INSERT INTO tb_cliente VALUES (tp_cliente('40404040404', tp_nome('Victor', 'Gustavo') , TO_DATE('04/07/1994', 'MM/DD/YYYY'), '606606606', tp_telefones(tp_telefone('565512637'), tp_telefone('725312637'))));

INSERT INTO tb_cliente VALUES (tp_cliente('10101010101', tp_nome('Joao', 'Silveirao') , TO_DATE('01/04/1997', 'MM/DD/YYYY'), '303303303', tp_telefones(tp_telefone('565522637'), tp_telefone('725372237'))));

INSERT INTO tb_cliente VALUES (tp_cliente('20202020202', tp_nome('Lucas', 'Lucas') , TO_DATE('02/05/1996', 'MM/DD/YYYY'), '404404404', tp_telefones(tp_telefone('565542637'), tp_telefone('727372637'))));

INSERT INTO tb_cliente VALUES (tp_cliente('30303030303', tp_nome('Pedro', 'Tulio') , TO_DATE('03/06/1995', 'MM/DD/YYYY'), '505505505', tp_telefones(tp_telefone('565542631'), tp_telefone('725372633'))));

INSERT INTO tb_cliente VALUES (tp_cliente('50505050505', tp_nome('Junior', 'Rafael') , TO_DATE('05/08/1993', 'MM/DD/YYYY'), '707707707', tp_telefones(tp_telefone('565540637'), tp_telefone('755372637'))));

INSERT INTO tb_cliente VALUES (tp_cliente('60606060606', tp_nome('Rafael', 'Ronaldo') , TO_DATE('06/09/1992', 'MM/DD/YYYY'), '808808808', tp_telefones(tp_telefone('505542637'), tp_telefone('725370637'))));

INSERT INTO tb_cliente VALUES (tp_cliente('70707070707', tp_nome('Maira', 'Ribeiro') , TO_DATE('07/10/1991', 'MM/DD/YYYY'), '909909909', tp_telefones(tp_telefone('565547617'), tp_telefone('545372637'))));

INSERT INTO tb_cliente VALUES (tp_cliente('80808080808', tp_nome('Juliana', 'Feitosa') , TO_DATE('08/12/1990', 'MM/DD/YYYY'), '212212212', tp_telefones(tp_telefone('565552637'), tp_telefone('725355637'))));

INSERT INTO tb_cliente VALUES (tp_cliente('90909090909', tp_nome('Gabriel', 'Gervasio') , TO_DATE('09/01/1989', 'MM/DD/YYYY'), '313313313', tp_telefones(tp_telefone('321542637'), tp_telefone('725567637'))));

-- Pessoa Funcionario

INSERT INTO tb_funcionario VALUES (tp_funcionario('83927364571', tp_nome('Carlos', 'Alberto') , TO_DATE('11/02/1997', 'MM/DD/YYYY'), '823746589', tp_telefones(tp_telefone('029384756'), tp_telefone('039485736'), tp_telefone('039485736')), 850.20, 'Gerente', NULL));

INSERT INTO tb_funcionario VALUES (tp_funcionario('67354635461', tp_nome('Bruno', 'Vitorino') , TO_DATE('11/02/1997', 'MM/DD/YYYY'), '738475689', tp_telefones(tp_telefone('999999999'), tp_telefone('928374658'), tp_telefone('109283746')), 850.20, 'Entregador', (SELECT REF(F) FROM tb_funcionario F WHERE F.cpf = '83927364571')));

INSERT INTO tb_funcionario VALUES (tp_funcionario('13131313131', tp_nome('Joao', 'Barbosa') , TO_DATE('01/04/1997', 'MM/DD/YYYY'), '515515515', tp_telefones(tp_telefone('999991999'), tp_telefone('928354658'), tp_telefone('109083746')), 900.20, 'Vendedor', (SELECT REF(F) FROM tb_funcionario F WHERE F.cpf = '83927364571')));

INSERT INTO tb_funcionario VALUES (tp_funcionario('14141414141', tp_nome('Lucas', 'Hitallo') , TO_DATE('02/05/1996', 'MM/DD/YYYY'), '616616616', tp_telefones(tp_telefone('992999999'), tp_telefone('920374658'), tp_telefone('109243746')), 900.20, 'Vendedor', (SELECT REF(F) FROM tb_funcionario F WHERE F.cpf = '83927364571')));

INSERT INTO tb_funcionario VALUES (tp_funcionario('15151515151', tp_nome('Pedro', 'Senna') , TO_DATE('03/06/1995', 'MM/DD/YYYY'), '717717717', tp_telefones(tp_telefone('939999999'), tp_telefone('928380658'), tp_telefone('909283746')), 850.20, 'Entregador', (SELECT REF(F) FROM tb_funcionario F WHERE F.cpf = '83927364571')));

INSERT INTO tb_funcionario VALUES (tp_funcionario('16161616161', tp_nome('Victor', 'Godoy') , TO_DATE('04/07/1994', 'MM/DD/YYYY'), '818818818', tp_telefones(tp_telefone('799999999'), tp_telefone('978374658'), tp_telefone('109283747')), 850.20, 'Zelador', (SELECT REF(F) FROM tb_funcionario F WHERE F.cpf = '83927364571')));

INSERT INTO tb_funcionario VALUES (tp_funcionario('17171717171', tp_nome('Junior', 'Pereira') , TO_DATE('05/08/1993', 'MM/DD/YYYY'), '919919919', tp_telefones(tp_telefone('999999599'), tp_telefone('928300658'), tp_telefone('109553746')), 900.20, 'Faxineiro', (SELECT REF(F) FROM tb_funcionario F WHERE F.cpf = '83927364571')));

INSERT INTO tb_funcionario VALUES (tp_funcionario('18181818181', tp_nome('Rafael', 'Caio') , TO_DATE('06/09/1992', 'MM/DD/YYYY'), '323323323', tp_telefones(tp_telefone('990099999'), tp_telefone('911374658'), tp_telefone('109222746')), 850.20, 'Zelador', (SELECT REF(F) FROM tb_funcionario F WHERE F.cpf = '83927364571')));

INSERT INTO tb_funcionario VALUES (tp_funcionario('19191919191', tp_nome('Maira', 'Godoy') , TO_DATE('07/10/1991', 'MM/DD/YYYY'), '424424424', tp_telefones(tp_telefone('992399999'), tp_telefone('928894658'), tp_telefone('104483746')), 900.20, 'Vendedor', (SELECT REF(F) FROM tb_funcionario F WHERE F.cpf = '83927364571')));

INSERT INTO tb_funcionario VALUES (tp_funcionario('23232323232', tp_nome('Juliana', 'Pedrosa') , TO_DATE('08/12/1990', 'MM/DD/YYYY'), '525525525', tp_telefones(tp_telefone('997539999'), tp_telefone('926694658'), tp_telefone('104093746')), 900.20, 'Vendedor', (SELECT REF(F) FROM tb_funcionario F WHERE F.cpf = '83927364571')));

-- Carro

INSERT INTO tb_carro VALUES(tp_carro('Sienna', 'ford', 'JHG7890', TO_DATE('2015', 'YYYY'), 'Rosa'));

INSERT INTO tb_carro VALUES(tp_carro('Sienna', 'ford', 'PGA5069', TO_DATE('2015', 'YYYY'), 'Preto'));

INSERT INTO tb_carro VALUES(tp_carro('Fiesta', 'ford', 'PGA3169', TO_DATE('2010', 'YYYY'), 'Cinza'));

INSERT INTO tb_carro VALUES(tp_carro('Uno', 'Fiat', 'KHX3009', TO_DATE('2012', 'YYYY'), 'Azul'));

INSERT INTO tb_carro VALUES(tp_carro('City', 'Honda', 'KHX3129', TO_DATE('2015', 'YYYY'), 'Vermelho'));

INSERT INTO tb_carro VALUES(tp_carro('Civic', 'Honda', 'KPP1239', TO_DATE('2011', 'YYYY'), 'Preto'));

INSERT INTO tb_carro VALUES(tp_carro('Focus', 'ford', 'PEQ1229', TO_DATE('2014', 'YYYY'), 'Cinza'));

INSERT INTO tb_carro VALUES(tp_carro('Camaro', 'Chevrolet', 'KKK1111', TO_DATE('2005', 'YYYY'), 'Azul'));

INSERT INTO tb_carro VALUES(tp_carro('Celta', 'Chevrolet', 'XXX2345', TO_DATE('2009', 'YYYY'), 'Vermelho'));

INSERT INTO tb_carro VALUES(tp_carro('Sienna', 'ford', 'XXT2342', TO_DATE('2016', 'YYYY'), 'Preto'));

-- tp_falecido

INSERT INTO tb_falecido VALUES (tp_falecido('76354678926', tp_nome('Ruy', 'Brito') , TO_DATE('07/10/1998', 'MM/DD/YYYY'), '098765432', tp_telefones(), TO_DATE('25/12/2015', 'DD/MM/YYYY'), 150.3, 68.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'JHG7890'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '12323456352'), TO_DATE('15/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('26262626262', tp_nome('Joao', 'Cavalcanti') , TO_DATE('01/04/1997', 'MM/DD/YYYY'), '828828828', tp_telefones(), TO_DATE('23/11/2000', 'DD/MM/YYYY'), 180.3, 88.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'JHG7890'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '12323456352'), TO_DATE('14/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('27272727272', tp_nome('Lucas', 'Santana') , TO_DATE('02/05/1990', 'MM/DD/YYYY'), '929929929', tp_telefones(), TO_DATE('06/08/2011', 'DD/MM/YYYY'), 172.3, 78.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'PGA5069'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '12323456352'), TO_DATE('13/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('28282828282', tp_nome('Pedro', 'Everton') , TO_DATE('07/10/1975', 'MM/DD/YYYY'), '434434434', tp_telefones(), TO_DATE('20/11/1998', 'DD/MM/YYYY'), 190.3, 98.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'PGA5069'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '76575456777'), TO_DATE('12/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('29292929292', tp_nome('Victor', 'Thiago') , TO_DATE('09/12/1977', 'MM/DD/YYYY'), '535535535', tp_telefones(), TO_DATE('11/08/2010', 'DD/MM/YYYY'), 150.3, 68.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'PGA5069'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '76575456777'), TO_DATE('11/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('34343434343', tp_nome('Junior', 'Andre') , TO_DATE('05/08/1993', 'MM/DD/YYYY'), '636636636', tp_telefones(), TO_DATE('11/06/1996', 'DD/MM/YYYY'), 159.3, 57.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'PGA5069'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '76575456777'), TO_DATE('10/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('35353535353', tp_nome('Rafael', 'Dolabela') , TO_DATE('06/09/1992', 'MM/DD/YYYY'), '737737737', tp_telefones(), TO_DATE('03/01/2015', 'DD/MM/YYYY'), 182.3, 80.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'KHX3009'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '00023455435'), TO_DATE('09/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('36363636363', tp_nome('Maira', 'Caraciolo') , TO_DATE('07/10/1950', 'MM/DD/YYYY'), '838838838', tp_telefones(), TO_DATE('23/04/2015', 'DD/MM/YYYY'), 148.2, 50.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'KHX3009'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '00023455435'), TO_DATE('08/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('38383838383', tp_nome('Gabriel', 'Otavio') , TO_DATE('07/05/1959', 'MM/DD/YYYY'), '545545545', tp_telefones(), TO_DATE('09/09/2014', 'DD/MM/YYYY'), 174.5, 72.5, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'KHX3009'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '00023455435'), TO_DATE('07/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('37373737373', tp_nome('Juliana', 'Brito') , TO_DATE('05/08/1998', 'MM/DD/YYYY'), '939939939', tp_telefones(), TO_DATE('13/10/2010', 'DD/MM/YYYY'), 160.1, 68.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'KHX3009'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '00023455435'), TO_DATE('06/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('39393939393', tp_nome('Tulio', 'Besouro') , TO_DATE('02/11/1968', 'MM/DD/YYYY'), '656656656', tp_telefones(), TO_DATE('04/05/2016', 'DD/MM/YYYY'), 150.3, 68.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'KPP1239'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '65543655536'), TO_DATE('05/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('76354478926', tp_nome('Jose', 'Alberto'), TO_DATE('11/11/1940', 'MM/DD/YYYY'), '028712332', tp_telefones(), TO_DATE('15/11/1998', 'DD/MM/YYYY'), 160.3, 60.2, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'KPP1239'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '65543655536'), TO_DATE('04/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('76354678123', tp_nome('Gabriel', 'Torres') , TO_DATE('07/10/1990', 'MM/DD/YYYY'), '098765992', tp_telefones(), TO_DATE('16/12/1995', 'DD/MM/YYYY'), 179.3, 78.5, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'KPP1239'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '65543655536'), TO_DATE('03/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('12344678926', tp_nome('Fabio', 'Gomes') , TO_DATE('10/12/1978', 'MM/DD/YYYY'), '098225432', tp_telefones(), TO_DATE('10/02/2015', 'DD/MM/YYYY'), 180.3, 98.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'KPP1239'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '65543655536'), TO_DATE('02/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('76354633926', tp_nome('Hugo', 'Augusto') , TO_DATE('09/08/1948', 'MM/DD/YYYY'), '128745452', tp_telefones(), TO_DATE('05/07/2016', 'DD/MM/YYYY'), 160.3, 58.6, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'PEQ1229'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '00023455435'), TO_DATE('01/11/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('76354123456', tp_nome('Tamires', 'Lima') , TO_DATE('06/23/1960', 'MM/DD/YYYY'), '098765333', tp_telefones(), TO_DATE('01/12/1997', 'DD/MM/YYYY'), 150.3, 68.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'PEQ1229'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '00023455435'), TO_DATE('31/10/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('48054678926', tp_nome('Augusto', 'Vila') , TO_DATE('09/05/1958', 'MM/DD/YYYY'), '095265432', tp_telefones(), TO_DATE('02/03/2010', 'DD/MM/YYYY'), 191.3, 99.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'PEQ1229'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '00023455435'), TO_DATE('30/10/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('76354412926', tp_nome('Leonardo', 'Vilela') , TO_DATE('09/12/1955', 'MM/DD/YYYY'), '608765432', tp_telefones(), TO_DATE('31/12/2012', 'DD/MM/YYYY'), 200.3, 99.9, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'PEQ1229'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '00023455435'), TO_DATE('29/10/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('76354678920', tp_nome('Victor', 'Ramos') , TO_DATE('01/02/1965', 'MM/DD/YYYY'), '098765405', tp_telefones(), TO_DATE('03/09/2011', 'DD/MM/YYYY'), 167.3, 66.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'PEQ1229'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '00023455435'), TO_DATE('28/10/2016', 'DD/MM/YYYY')));

INSERT INTO tb_falecido VALUES (tp_falecido('59054678926', tp_nome('Rebeca', 'Silva') , TO_DATE('11/12/1991', 'MM/DD/YYYY'), '098766662', tp_telefones(), TO_DATE('04/10/2005', 'DD/MM/YYYY'), 150.3, 68.4, (SELECT REF(C) FROM tb_carro C WHERE C.placa = 'PEQ1229'), (SELECT REF(M) FROM tb_motorista M WHERE M.cpf = '00023455435'), TO_DATE('27/10/2016', 'DD/MM/YYYY')));

-- tp_enterro

INSERT INTO tb_enterro VALUES (tp_enterro(1, TO_DATE('03/11/2016', 'DD/MM/YYYY'), TO_DATE('01/11/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(1, tp_nome('Divino', 'Neto')), tp_convidado(2, tp_nome('Bruno', 'Filho'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '76354678926'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '63565476789')));

INSERT INTO tb_enterro VALUES (tp_enterro(2, TO_DATE('25/03/1993', 'DD/MM/YYYY'), TO_DATE('23/03/1993', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(3, tp_nome('Carlos', 'Alberto')), tp_convidado(4, tp_nome('Antonio', 'Gadelha'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '26262626262'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '40404040404')));

INSERT INTO tb_enterro VALUES (tp_enterro(3, TO_DATE('02/09/1997', 'DD/MM/YYYY'), TO_DATE('30/08/1997', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(5, tp_nome('Marcia', 'Menezes')), tp_convidado(6, tp_nome('Wilton', 'Menezes'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '27272727272'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '10101010101')));

INSERT INTO tb_enterro VALUES (tp_enterro(4, TO_DATE('05/09/1997', 'DD/MM/YYYY'), TO_DATE('03/08/1997', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(7, tp_nome('Adalberto', 'Alves')), tp_convidado(8, tp_nome('Wilton', 'Menezes'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '28282828282'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '20202020202')));

INSERT INTO tb_enterro VALUES (tp_enterro(5, TO_DATE('04/09/1997', 'DD/MM/YYYY'), TO_DATE('02/08/1997', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(9,tp_nome('Jose', 'Rodolfo')), tp_convidado(10, tp_nome('Bruno', 'Vitorino'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '29292929292'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '30303030303')));

INSERT INTO tb_enterro VALUES (tp_enterro(6, TO_DATE('10/09/1997', 'DD/MM/YYYY'), TO_DATE('08/09/1997', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(11, tp_nome('Dilma', 'Rousseff')), tp_convidado(12, tp_nome('Michel', 'Temer'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '34343434343'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '40404040404')));

INSERT INTO tb_enterro VALUES (tp_enterro(7, TO_DATE('15/09/1997', 'DD/MM/YYYY'), TO_DATE('13/09/1997', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(13, tp_nome('Aecio', 'Neves')), tp_convidado(14, tp_nome('Aloysio', 'Nunes'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '35353535353'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '50505050505')));

INSERT INTO tb_enterro VALUES (tp_enterro(8, TO_DATE('16/09/1997', 'DD/MM/YYYY'), TO_DATE('14/09/1997', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(15, tp_nome('Zeze', 'Di Camargo')), tp_convidado(16, tp_nome('Vanessa', 'Camargo'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '36363636363'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '60606060606')));

INSERT INTO tb_enterro VALUES (tp_enterro(9, TO_DATE('17/09/1997', 'DD/MM/YYYY'), TO_DATE('15/09/1997', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(17, tp_nome('Ivete', 'Sangalo')), tp_convidado(18, tp_nome('Claudia', 'Leite'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '37373737373'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '70707070707')));

INSERT INTO tb_enterro VALUES (tp_enterro(10, TO_DATE('18/09/1997', 'DD/MM/YYYY'), TO_DATE('16/09/1997', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(19, tp_nome('Divino', 'Neto')), tp_convidado(20, tp_nome('Bruno', 'Vitorino'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '38383838383'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '80808080808')));

-- tp_cremacao

INSERT INTO tb_cremacao VALUES (tp_cremacao(1, TO_DATE('02/11/2016', 'DD/MM/YYYY'), TO_DATE('31/10/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(1, tp_nome('Rafael', 'Albuquerque')), tp_convidado(2, tp_nome('Bruno', 'Vitorino'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '39393939393'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '63565476789')));

INSERT INTO tb_cremacao VALUES (tp_cremacao(2, TO_DATE('02/11/2016', 'DD/MM/YYYY'), TO_DATE('31/10/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(3, tp_nome('Gustavo', 'Leao')), tp_convidado(4, tp_nome('Kevin', 'Dantas'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '59054678926'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '70707070707')));

INSERT INTO tb_cremacao VALUES (tp_cremacao(3, TO_DATE('04/11/2016', 'DD/MM/YYYY'), TO_DATE('02/11/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(5, tp_nome('Mario', 'Bezerra')), tp_convidado(6, tp_nome('Jose', 'Nunes'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '76354678920'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '70707070707')));

INSERT INTO tb_cremacao VALUES (tp_cremacao(4, TO_DATE('08/12/2016', 'DD/MM/YYYY'), TO_DATE('06/12/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(7, tp_nome('Victor', 'Pilar')), tp_convidado(8, tp_nome('Wagner', 'Coelho'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '76354412926'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '70707070707')));

INSERT INTO tb_cremacao VALUES (tp_cremacao(5, TO_DATE('09/11/2016', 'DD/MM/YYYY'), TO_DATE('07/11/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(9, tp_nome('Teofilo', 'Ribeiro')), tp_convidado(10, tp_nome('Eymael', 'Farias'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '48054678926'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '80808080808')));

INSERT INTO tb_cremacao VALUES (tp_cremacao(6, TO_DATE('06/08/2016', 'DD/MM/YYYY'), TO_DATE('04/08/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(11, tp_nome('Fagner', 'Recife')), tp_convidado(12, tp_nome('Rivaldo', 'Batista'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '76354123456'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '80808080808')));

INSERT INTO tb_cremacao VALUES (tp_cremacao(7, TO_DATE('15/12/2016', 'DD/MM/YYYY'), TO_DATE('13/12/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(13, tp_nome('Augusto', 'Brandao')), tp_convidado(14, tp_nome('Leonardo', 'Ferro'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '76354633926'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '80808080808')));

INSERT INTO tb_cremacao VALUES (tp_cremacao(8, TO_DATE('16/02/2016', 'DD/MM/YYYY'), TO_DATE('14/02/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(15, tp_nome('Pedro', 'Henrique')), tp_convidado(16, tp_nome('Tales', 'Mileto'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '12344678926'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '90909090909')));

INSERT INTO tb_cremacao VALUES (tp_cremacao(9, TO_DATE('09/09/2016', 'DD/MM/YYYY'), TO_DATE('07/09/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(17, tp_nome('Manuel', 'Lima')), tp_convidado(18, tp_nome('Roberto', 'Dinamite'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '76354678123'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '90909090909')));

INSERT INTO tb_cremacao VALUES (tp_cremacao(10, TO_DATE('22/10/2016', 'DD/MM/YYYY'), TO_DATE('20/10/2016', 'DD/MM/YYYY'), tp_nt_convidado(tp_convidado(19, tp_nome('Vinicius', 'Albuquerque')), tp_convidado(20, tp_nome('Jose', 'Roberto'))), (SELECT REF(F) FROM tb_falecido F WHERE F.cpf = '76354478926'), (SELECT REF(C) FROM tb_cliente C WHERE C.cpf = '90909090909')));

-- tp_caixao

INSERT INTO tb_caixao VALUES(tp_caixao('jbas', 5.50, 'Azul', 'Carajas', 80.0, 50.5, 'Gesso', (SELECT REF(E) FROM tb_enterro E WHERE E.id = 1)));

INSERT INTO tb_caixao VALUES(tp_caixao('abcd', 5.70, 'Amarelo', 'Divinolandia', 79.0, 10.5, 'Coral', (SELECT REF(E) FROM tb_enterro E WHERE E.id = 2)));

INSERT INTO tb_caixao VALUES(tp_caixao('efgh', 6.35, 'Azul', 'Partidos', 10.0, 50.0, 'Gesso', (SELECT REF(E) FROM tb_enterro E WHERE E.id = 3)));

INSERT INTO tb_caixao VALUES(tp_caixao('ijkl', 8.70, 'Amarelo', 'Finados', 13.3, 11.5, 'Coral', (SELECT REF(E) FROM tb_enterro E WHERE E.id = 4)));

INSERT INTO tb_caixao VALUES(tp_caixao('mnop', 3.20, 'Vermelho', 'De Ontem', 25.0, 13.5, 'Lino', (SELECT REF(E) FROM tb_enterro E WHERE E.id = 5)));

INSERT INTO tb_caixao VALUES(tp_caixao('qrst', 6.10, 'Roxo', 'Ate Nunca', 13.2, 50.1, 'Verniz', (SELECT REF(E) FROM tb_enterro E WHERE E.id = 6)));

INSERT INTO tb_caixao VALUES(tp_caixao('uvxw', 8.17, 'Vermelho', 'Rofinol', 87.0, 52.1, 'Lino', (SELECT REF(E) FROM tb_enterro E WHERE E.id = 7)));

INSERT INTO tb_caixao VALUES(tp_caixao('xyza', 9.10, 'Roxo', 'Carajas', 115.0, 50.0, 'Verniz', (SELECT REF(E) FROM tb_enterro E WHERE E.id = 8)));

INSERT INTO tb_caixao VALUES(tp_caixao('bcde', 9.05, 'Vermelho', 'Carajas', 8.0, 5.25, 'Lino', (SELECT REF(E) FROM tb_enterro E WHERE E.id = 9)));

INSERT INTO tb_caixao VALUES(tp_caixao('fghi', 7.16, 'Roxo', 'Ate Nunca', 11.0, 55.1, 'Verniz', (SELECT REF(E) FROM tb_enterro E WHERE E.id = 10)));

-- tp_urna

INSERT INTO tb_urna VALUES(tp_urna('abcd', 3.20, 'Amarelo', 'Casa das Tintas', 12.0, 50.5, (SELECT REF(C) FROM tb_cremacao C WHERE C.id = 1)));

INSERT INTO tb_urna VALUES(tp_urna('0oht', 5.20, 'Amarelo', 'Casa Eterna', 11.0, 52.5, (SELECT REF(C) FROM tb_cremacao C WHERE C.id = 2)));

INSERT INTO tb_urna VALUES(tp_urna('abce', 6.20, 'Verde', 'Casa das Tintas', 12.0, 53.5, (SELECT REF(C) FROM tb_cremacao C WHERE C.id = 3)));

INSERT INTO tb_urna VALUES(tp_urna('abcf', 7.20, 'Azul', 'Casa Eterna', 13.0, 55.5, (SELECT REF(C) FROM tb_cremacao C WHERE C.id = 4)));

INSERT INTO tb_urna VALUES(tp_urna('abcg', 8.20, 'Amarelo', 'Ate Nunca', 14.0, 59.5, (SELECT REF(C) FROM tb_cremacao C WHERE C.id = 5)));

INSERT INTO tb_urna VALUES(tp_urna('abch', 9.20, 'Verde', 'Ate Nunca', 15.0, 60.5, (SELECT REF(C) FROM tb_cremacao C WHERE C.id = 6)));

INSERT INTO tb_urna VALUES(tp_urna('abci', 10.20, 'Azul', 'Casa das Tintas', 16.0, 62.5, (SELECT REF(C) FROM tb_cremacao C WHERE C.id = 7)));

INSERT INTO tb_urna VALUES(tp_urna('abcj', 3.60, 'Amarelo', 'Casa Eterna', 17.0, 70.5, (SELECT REF(C) FROM tb_cremacao C WHERE C.id = 8)));

INSERT INTO tb_urna VALUES(tp_urna('abck', 3.70, 'Verde', 'Carajas', 18.0, 80.5, (SELECT REF(C) FROM tb_cremacao C WHERE C.id = 9)));

INSERT INTO tb_urna VALUES(tp_urna('abcl', 3.80, 'Azul', 'Carajas', 19.0, 90.5, (SELECT REF(C) FROM tb_cremacao C WHERE C.id = 10)));
