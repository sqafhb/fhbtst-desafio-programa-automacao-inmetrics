class CadastroPage < SitePrism::Page

    element :genero_masculino, '#id_gender1'
    element :genero_feminino, '#id_gender2'
    element :first_name, '#customer_firstname'
    element :last_name, '#customer_lastname'
    element :password, '#passwd'
    element :dia, '#days'
    element :mes, '#months'
    element :ano, '#years'

    element :first_name_adress, '#firstname'
    element :last_name_adress, '#lastname'
    element :empresa, '#company'

    element :endereco, '#address1'
    element :cidade, '#city'
    element :estado, '#id_state'

    element :cep, '#postcode'
    element :celular, '#phone_mobile'
    element :referencia, '#alias'
    element :boton_registrar, '#submitAccount'

    def inserir_dados_fake

        sleep 5

        nome = Faker::Name.first_name
        sobrenome = Faker::Name.last_name
        senha = Faker::Internet.password

        first_name.set nome
        last_name.set sobrenome
        password.set senha

        first_name_adress.set nome
        last_name_adress.set sobrenome
        empresa.set Faker::Company.name
        endereco.set Faker::Address.street_address
        cidade.set Faker::Address.city
        find('#uniform-id_state').click
        find('*  #id_state [value="6"').click
        cep.set '80123'
        celular.set Faker::PhoneNumber.cell_phone
        referencia.set 'Minha Casa'
    end

    def registrar
        boton_registrar.click
        sleep 5
    end
    
end