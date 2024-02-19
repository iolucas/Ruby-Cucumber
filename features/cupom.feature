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

    @ddt
    Scenario Outline: Tentativa de aplicar o desconto
        When aplico o seguinte cupom de desconto: "<cupom>"
        Then devo ver a notificação: "<saida>"
            And o valor final da compra deve permanecer o mesmo

        Examples:
            | cupom    | saida           |
            | PROMO20  | Cupom expirado! |
            | PROMO100 | Cupom inválido! |
