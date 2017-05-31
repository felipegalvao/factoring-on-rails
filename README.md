# Factoring on Rails

Esta aplicação em Rails simula o valor de operações através do formulário
apresentado.

Usei Bootstrap para o layout responsivo.

Link para demo hospedada no Heroku: https://limitless-cove-52665.herokuapp.com/

## Instruções para execução local

- Clonar o repositório
- Entrar no diretório do projeto com "cd factoring-on-rails"
- Executar o comando "bundle install --without production"
- Executar o comando "rails db:migrate"
- Executar o comando "rails s"
- Acessar o projeto em "http://localhost:3000/"

## Suposições e Ideias Futuras

Suposições

- Considerei que qualquer dia além do período de 10 configura o aumento da taxa
para o próximo inteiro. Ex: 20 dias -> 3,30%; 21 dias -> 4,95%
- Validações tanto nos campos do HTML5 quanto no modelo. Mensagens de erro
claras e no topo do formulário

Ideias Futuras

- Uso de Framework Javascript para binding entre o valor da taxa / valor a
receber e o valor do título e dos dias, com atualização instantânea e automática
- Taxa base dinâmica
