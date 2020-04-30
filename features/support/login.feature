#language:pt

Funcionalidade: Login
    Para que eu possa fazer compras na loja virtual
    Sendo um cliente cadastrado
    Posso efetuar meu login na loja virtual

    @login
    Cenario: Login com sucesso
        O cliente efetua seu login com dados válidos
        e o sistema concede o acesso ao novo usuário

        Quando eu faço login com email "teste@cateno.com" e senha "cateno123"
        Então devo ver a mensagem "Welcome to your account. Here you can manage all of your personal information and orders." na area logada

    @loginfail
    Esquema do Cenario: Login sem sucesso
        Quando eu faço login com <email> ou <senha> incorretos
        Então devo ver a mensagem de alerta do login <texto>

        Exemplos:
            | email              | senha         | texto                                          |
            | "emailerrado"      | "cateno123"   | "There is 1 error\nInvalid email address."     |
            | ""                 | "cateno123"   | "There is 1 error\nAn email address required." |
            | "teste@cateno.com" | "senhaerrada" | "There is 1 error\nAuthentication failed."     |
            | "teste@cateno.com" | ""            | "There is 1 error\nPassword is required."      |

