Feature: Uso de Cupons no Checkout

    Como um usuário da Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

    Background:
        Given que iniciei a compra do item:
            | name     | Café com Leite |
            | price    | R$ 19,99       |
            | delivery | R$ 10,00       |
            | total    | R$ 29,99       |

    Scenario: Aplicar Desconto de 20%

        When aplico o seguinte cupom de desconto: "MEUCAFE"
        Then o valor final da compra deve ser atualizado para "R$ 25,99"
    
    Scenario: Cupom Expirado

        When aplico o seguinte cupom de desconto: "PROMO20"
        Then devo ver a notificação: "Cupom expirado!"
            And o valor final da compra deve permanecer o mesmo        

    Scenario: Cupom Inválido

        When aplico o seguinte cupom de desconto: "PROMO100"
        Then devo ver a notificação: "Cupom inválido!"
            And o valor final da compra deve permanecer o mesmo        
