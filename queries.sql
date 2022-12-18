USE charts; 

-- A QUERY ABAIXO CRIA UMA VIEW QUE LISTA OS MÚSICOS QUE PARTICIPARAM DE ÁLBUNS #1 DA BILLBOARD
CREATE VIEW musicos_albuns_1 AS 
SELECT musicos.nome_musico,
		albuns.nome_album
	FROM musicos
    INNER JOIN albuns
		ON musicos.id_banda = albuns.id_banda
	WHERE albuns.billboard = '1'; 

SELECT * FROM musicos_albuns_1;

-- A QUERY ABAIXO MOSTRA OS PRODUTORES DOS DISCOS MAIS VENDIDOS EM ORDEM DECRESECENTE, EXCLUINDO REGISTROS NULOS

SELECT ROW_NUMBER() OVER (ORDER BY albuns.copias_vendidas DESC) AS ranking_vendas,
		producao.produtor as produtor,
		albuns.nome_album as album,
        albuns.copias_vendidas as vendas
	FROM producao
    INNER JOIN albuns 
    ON producao.id_album = albuns.id_album
    HAVING vendas IS NOT NULL; 

-- A QUERY ABAIXO OS MÚSICOS AINDA ATIVOS, SUA DATA DE NASCIMENTO E OS ÁLBUNS QUE PARTICIPARAM

SELECT musicos.nome_musico as musico,
		musicos.data_nascimento as nascimento,
        albuns.nome_album as album
	FROM musicos
    INNER JOIN albuns
    ON musicos.id_banda = albuns.id_banda
    WHERE musicos.em_atividade = '1'
    GROUP BY musicos.nome_musico, albuns.nome_album, musicos.data_nascimento;