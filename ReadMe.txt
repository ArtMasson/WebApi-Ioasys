Processo Seletivo Ioasys - Web Api versão 1 05/05/2019
-----------------------------------------------------------------------------------------------
Aviso:
 - Todos os dados utilizados para a construção da tabela Empresas são fictícios e 
   foram escolhidos aleatoriamente.

-----------------------------------------------------------------------------------------------
Visão geral:
 - Web Api criada com .Net Core que acessa um banco de dados SQL. 
 - A Api conta com as seguintes funções:
	- Acessando a tabela Empresas, lista todas as empresas detalhadas.
   	- Acessando a tabela Empresas, lista empresas por filtro ((nome), 
	  (tipo), (nome e tipo))
   	- Acessando a tabela Tipos, lista todos os tipos de empresa.

-----------------------------------------------------------------------------------------------
Rotas:
 - Listar todas as empresas 
	=> https://localhost:5001/api/v1/enterprises/1

 - Listar empresas filtrando por nome 
	=> https://localhost:5001/api/v1/enterprises/name/{NomeDesejado}
	- NomeDesejado(String) passado como parâmetro.

 - Listar empresas filtrando por tipo 
	=> https://localhost:5001/api/v1/enterprises/type/{TipoDesejado}
	- TipoDesejado(int) passado como parâmetro.

 - Listar empresas filtrando por nome e tipo 
	=> https://localhost:5001/api/v1/enterprises?enterprise_types={Tipo}&name={Nome}
	- TipoDesejado(int) e NomeDesejado(String) passado como parâmetro.

 - Listar todos os tipos de empresa 
	=> https://localhost:5001/api/v1/types

-----------------------------------------------------------------------------------------------
Arthur Carvalho Masson, Sistemas de Informação - UFLA