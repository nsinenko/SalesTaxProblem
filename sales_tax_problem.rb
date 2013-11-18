Dir.glob('./lib/*', &method(:require))

input_1 = <<EOS
Quantity, Product, Price
1, book, 12.49
1, music CD, 14.99
1, chocolate bar, 0.85
EOS

input_2 = <<EOS
Quantity, Product, Price
1, imported box of chocolates, 10.00 
1, imported bottle of perfume, 47.50
EOS

input_3 = <<EOS
Quantity, Product, Price
1, imported bottle of perfume, 27.99 
1, bottle of perfume, 18.99
1, packet of headache pills, 9.75
1, box of imported chocolates, 11.25
EOS

checkout_1 = Checkout.new(input_1)
checkout_2 = Checkout.new(input_2)
checkout_3 = Checkout.new(input_3)

puts checkout_1.print_receipt
puts checkout_2.print_receipt
puts checkout_3.print_receipt