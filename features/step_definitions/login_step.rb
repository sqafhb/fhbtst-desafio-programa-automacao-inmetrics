Dado('estou na pagina de login') do
    @login_page = LoginPage.new
    @login_page.load
    sleep 5
end
  
Quando('submeto dados de e-mail e senha validos') do
    @login_page.inserir_dados_validos
    @login_page.efetuar_login
    sleep 5
end

Então('visualizo a mensagem de Bem Vindo.') do
    sleep 10
    expect(@login_page.mensagem).to eq('Welcome to your account. Here you can manage all of your personal information and orders.')
end