require_relative '../lib/product'
require_relative '../lib/item'
require_relative '../lib/receipt'
require_relative '../lib/tax'
require_relative '../lib/printer'
require_relative '../lib/checkout'

def expected_output
output = <<EOS
1, book, 12.49
1, music CD, 16.49
1, chocolate bar, 0.85

Sales Taxes: 1.50
Total: 29.83
EOS
end

def checkout_input
output = <<EOS
Quantity, Product, Price
1, book, 12.49
1, music CD, 14.99
1, chocolate bar, 0.85
EOS
end