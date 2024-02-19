require_relative './pages/home.rb'
require_relative './pages/checkout.rb'
require_relative './pages/order.rb'
require_relative './pages/components.rb'

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @order = OrderPage.new
    @popup = PopUp.new
end

After do |scenario|
    temp_shot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    attach(temp_shot, 'image/png', 'Screenshot') 
end