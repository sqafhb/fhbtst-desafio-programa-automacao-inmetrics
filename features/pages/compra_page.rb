class CompraPage < SitePrism::Page

    element :my_wishlist, '#center_column > div > div:nth-child(2) > ul > li > a'
    element :product, '#best-sellers_block_right > div > ul > li:nth-child(1) > a > img'
    element :add_cart_product, '#add_to_cart > button > span'
    element :proceed_checkout, '#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a'
    element :proceed_checkout_2, '#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium'
    element :proceed_checkout_3, '#center_column > form > p > button'
    element :termsofservice, '#uniform-cgv'
    element :proceed_checkout_4, '#form > p > button'
    element :pay_by_check, '#HOOK_PAYMENT > div:nth-child(2) > div > p > a'
    element :confirm_order, '#cart_navigation > button'
    #element :message_confirmation, '* #center_column p[class="alert alert-success"'


    def adicionar_item

        my_wishlist.click
        product.click
        add_cart_product.click
        proceed_checkout.click
        proceed_checkout_2.click
        proceed_checkout_3.click
        termsofservice.click
        proceed_checkout_4.click
    end

    def efetuar_pagamento

        pay_by_check.click
        confirm_order.click
    
    end

    def visualizar_mensagem
        find('* #center_column p[class="alert alert-success"').text
    end

end