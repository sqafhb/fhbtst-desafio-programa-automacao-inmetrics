class LoginPage < SitePrism::Page

    set_url '/index.php?controller=authentication&back=my-account'

    element :email, '#email'
    element :senha, '#passwd'
    element :logar, '#SubmitLogin'
    #element :message, '//*[@id="center_column"]/p/text()'


    def inserir_dados_validos

        email.set 'frndb90@gmail.com'
        senha.set '@TesteINM'
    end

    def efetuar_login
        logar.click
    end

    def mensagem
        find('* #center_column p').text
    end

end