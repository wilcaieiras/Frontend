#language:pt

Funcionalidade: Sign in
    Para que eu possa fazer compras na loja virtual
    Sendo um potencial cliente
    Posso efetuar meu cadastro na loja virtual

    @signin
    Esquema do Cenario: Cadastro com sucesso
        O cliente efetua seu cadastro com dados válidos
        e o sistema concede o acesso ao novo usuário

        Dado que sou um possível <cliente> que quero fazer compras na loja online
        Quando eu me cadastro com um endereço de email valido
        Então devo preencher os campos obrigatórios para cadastro
        E devo ver a mensagem "Welcome to your account. Here you can manage all of your personal information and orders."

        Exemplos:
            | cliente   |
            | "user_1"  |

    @signinfail
    Esquema do Cenario: Cadastro sem sucesso
        Quando eu tento me cadastrar com um email inválido ou sem preencher o <email>
        Então devo ver a mensagem de alerta <texto>

        Exemplos:
            | email                  | texto                    |
            | "testeemailerrado"     | "Invalid email address." |
            | ""                     | "Invalid email address." |
