#language: pt

Funcionalidade: Login

    @login_sucesso
    Cenário: Login efetuado com sucesso
        Dado estou na pagina de login
        Quando submeto dados de e-mail e senha validos
        Então visualizo a mensagem de Bem Vindo.