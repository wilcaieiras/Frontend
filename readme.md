# testes de frontend para validar cadastro de cliente, login com e sem sucesso usando a linguagem ruby com cucumber, capybara e rspec
Validação de cadastro de cliente com dados válidos e inválidos e login com dados válidos e inválidos

## Pré-requisito


É necessário a instalação do Bundle:

```
gem install bundler
```

## Clonando o repositório

Clone o Repositório:

```
git clone https://github.com/wilcaieiras/frontend.git
```

## Instalação das dependências

Após a clonagem do repositório digite:

```
bundle install
```

Isto fará a instalação das dependências necessárias para a execução dos testes.

## Execução dos Testes

Para executar os testes de forma que gere o relatório HTML com as evidências anexadas abra uma nova aba no terminal e digite:

```
cucumber --format pretty --format html --out=features/log/.html
```

## Relatórios e evidências

```

O relatório html possui as evidências anexadas nele e as imagens também serão geradas na pasta log:

├── features
│   ├── log               - Relatório HTML e evidências em PNG
│   │   └── report.html
|   |   |__imagem.png

```

