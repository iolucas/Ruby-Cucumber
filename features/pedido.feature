Feature: Pedidos

    Como um usuário do site Starbugs, eu quero selecionar e comprar cafés
    Para que eu possa receber os produtor em meu endereço e efeturar o pagamento na entrega

    Scenario: Compra bem sucedida

        Given que estou na página principal da Starbugs
            And que iniciei a compra do item "Expresso Tradicional" 
        When faço a busca do seguinte CEP: "04534011"
            And informo os demais dados do endereço:
            | number  | 1000    |
            | details | Apto 22 |
            And escolho a forma de pagamento "Cartão de Débito"
            And por fim finalizo a compra
        Then sou redirecionado para a página de confirmação de pedido
            And e deve ser informado o seguinte prazo de entrega: "20 min - 30 min"