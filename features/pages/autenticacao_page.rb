class AutenticacaoPage < SitePrism::Page

    set_url '/index.php?controller=authentication&back=my-account'

    element :email_fake, '#email_create'
    element :criar_conta, '#SubmitCreate'


    def inserir_email_fake
        email = Faker::Internet.email
        email_fake.set email
    end

    def criar_conta_fake
        criar_conta.click
    end

end