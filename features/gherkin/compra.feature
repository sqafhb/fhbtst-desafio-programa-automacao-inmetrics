#language: pt

Funcionalidade: Comprar

    @efetuar_compra
    Cenário: Efetuar compra
        Dado que estou logado na loja
        Quando  adiciono um item no carrinho e efetuo o pagamento
        Então vejo a mensagem de Your order on My Store is complete.