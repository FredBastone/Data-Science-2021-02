#Atalhos para acessar o conteudo das tabelas

select * from Avaliacoes;
select * from Filmes;
SELECT * from Usuarios;

#4 - Achar a frequencia de cada nota entre os anos de 2015 e 2016

select nota, count(nota)
from Avaliacoes
where ano_avaliacao BETWEEN 2015 and 2016
group by nota;

#Unir os dados das tabelas utilizando o filme_id como chave primária da tabela filmes e usuario_id como chave primaria da tabela de usuarios.

select *
from Avaliacoes, filmes, Usuarios
where Avaliacoes.filme_id = filmes.Filme_ID
and Avaliacoes.usuario_id = Usuarios.usuario_id;

#5 - Criar um ranking dos generos de filmes considerando os lancamentos de 2014 e 2015

select genero, Avg(nota)
from Avaliacoes, filmes, Usuarios
where Avaliacoes.filme_id = filmes.Filme_ID
and Avaliacoes.usuario_id = Usuarios.usuario_id
and ano_lancamento BETWEEN 2014 and 2015
group by genero
order by Avg(nota) DESC;

#6 - Considerei a formulação da questão 6 ambigua entre achar a nota média do gênero como um todo ou a média invidual de cada um dos filmes contido nele. Por conta disso fiz a questao das duas formas, com 6.1 sendo o primeiro caso e 6.2 o segundo.

#6.1 - Encontrar a nota média recebida por todos os filmes de drama dada por usuários do genero feminino

select genero,sexo, Avg(nota)
from Avaliacoes, filmes, Usuarios
where Avaliacoes.filme_id = filmes.Filme_ID
and Avaliacoes.usuario_id = Usuarios.usuario_id
and sexo = "F"
and genero = "Drama"
group by genero, sexo;

#6.2 - Encontrar a nota média recebida por cada um dos filmes de drama dada por usuários do genero feminino

select Filmes.filme_id, Avg(nota)
from Avaliacoes, filmes, Usuarios
where Avaliacoes.filme_id = filmes.Filme_ID
and Avaliacoes.usuario_id = Usuarios.usuario_id
and sexo = "F"
and genero = "Drama"
group by Filmes.filme_id
order by Filmes.filme_id;

