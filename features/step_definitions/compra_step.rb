Dado('que estou logado na loja') do

    @compra_page = CompraPage.new

    step "estou na pagina de login"
    step "submeto dados de e-mail e senha validos"

end

Quando('adiciono um item no carrinho e efetuo o pagamento') do
    @compra_page.adicionar_item
    @compra_page.efetuar_pagamento
end

Então('vejo a mensagem de Your order on My Store is complete.') do
    @compra_page.visualizar_mensagem
    expect(@compra_page.visualizar_mensagem).to eq('Your order on My Store is complete.')
end