Dado('estou na pagina de autenticação') do
    @autenticacao_page = AutenticacaoPage.new
    @autenticacao_page.load
end
  
Quando('insiro um email fake no campo criar conta') do
    @autenticacao_page.inserir_email_fake
end
  
Então('clico no botão criar_conta para ser direcionado ao formulário de cadastro') do
    @autenticacao_page.criar_conta_fake
    @cadastro_page = CadastroPage.new
end