class Item
	attr_reader :quantity, :product
	
	def initialize(args)
		@quantity = args[:quantity]
		@product = args[:product]
	end

	def total
		product.price * quantity
	end
end