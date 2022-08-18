Dado('que estou na página do formulário de cadastro') do
  @cadastro_page = CadastroPage.new
  
  step "estou na pagina de autenticação"
  step "insiro um email fake no campo criar conta"
  step "clico no botão criar_conta para ser direcionado ao formulário de cadastro"
end

Quando('preencho os dados de novo usuário fake') do
  @cadastro_page.inserir_dados_fake
end

Então('submeto o formulário criando um novo usuário') do
  @cadastro_page.registrar
end