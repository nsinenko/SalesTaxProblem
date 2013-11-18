class Checkout
	attr_reader :receipt

	def initialize(input)
		@receipt = Receipt.new

		input.lines.to_a[1..-1].each do |line|
			receipt.add_item(to_receipt_item(line))
		end
	end

	def print_receipt
		Printer.print_receipt(@receipt)
	end

	private
	def to_receipt_item(line)
		quantity, name, price = line.gsub(', ',',').split(',')
		product = Product.new(name: name, price: price)
		item = Item.new(quantity: quantity.to_i, product: product)
	end
end