

# Deploy para sistema de consulta de filmes


## Objetivo
Fazer o deploy na AWS do aplicação de consulta de filmes em Docker e aplicar melhorias no projeto.

## Como foi desenvolvido
Primeiramente implementamos o Docker na aplicação inserindo os arquivos ``Dockerfile`` e ``docker-compose.yml`` para a publicação da aplicação. Depois fizemos deploy na AWS por meio do AWS Elastic Beanstalk, com o intuito de manter a página on-line no servidor da aws.

## Arquitetura do projeto na AWS

O deploy do projeto foi baseado na ferramenta Elastic Beanstalk da AWS, a qual é responsável pelo gerenciamento dos recursos necessários para o funcionamento da aplicação, exemplificado no diagrama de arquitetura abaixo:

   ![image](https://github.com/vitorandrad3/express-api-consume-with-aws/assets/121817324/043d63e6-3134-40ba-83e2-592033956a96)


### Caracteristicas do projeto
- Melhoria no tratamento dos erros utilizando um Middleware de erros.
- Refatoração do Controller.
- Criação da pasta ``utils``.
- Implementação da factory de urls da API.
- Criação da classe de erro da API ``APIError``.
- Implementação de um método da entidade ``Movie`` nos models.
- Refatoração do código: remoção das magic strings e magic numbers.
- Adição da página de erro.
- Adição do botão 'Home' na view.


Na página, temos uma pequena caixa de busca, digite um termo e clique no botão "Search". Após isso, uma lista de filmes aparecerá na tela, com imagens e nomes de longametragens que coincidem com o termo pesquisado.

Também será possível clicar em algum dos pôsteres ou títulos para mostrar detalhes do filme em específico, como Ano de Lançamento, Diretor, Gênero e Descrição.

![imagem do front](https://i.imgur.com/lJJspNE.gif)
