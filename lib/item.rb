class Item
	attr_reader :quantity, :product

	def initialize(args)
		@quantity = args[:quantity]
		@product = args[:product]
	end

	def total
		after_tax_price * quantity
	end

	def tax
		tax_on_product * quantity
	end

	def after_tax_price
		product.price + tax_on_product
	end

	def to_s
		"#{quantity}, #{@product.name}, %.2f" %total
	end

private
	def tax_on_product
		Tax.new(product).total_tax
	end
end