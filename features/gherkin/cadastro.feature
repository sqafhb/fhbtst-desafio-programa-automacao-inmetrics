#language: pt

Funcionalidade: Criar conta de usuário

    @novo_usuario
    Cenário: Iniciando novo cadastro
        Dado estou na pagina de autenticação
        Quando insiro um email fake no campo criar conta
        Então clico no botão criar_conta para ser direcionado ao formulário de cadastro


    @formulario_cadastro
    Cenário: Preenchendo o formulário de cadastro para novo usuário email_fake
        Dado que estou na página do formulário de cadastro
        Quando preencho os dados de novo usuário fake
        Então submeto o formulário criando um novo usuário

