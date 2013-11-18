class Tax
	TAXFREE = ["book", "chocolate", "pills"]
	TAXFREE_REGEX = Regexp.new(TAXFREE.join("|"))

	attr_reader :product, :product_name, :price

	def initialize(product)
		@product = product
		@product_name = product.name
		@price = product.price
	end

	def total_tax
		round(sales_tax + import_tax)
	end

private
	def sales_tax
		(price * 0.10 if taxable?) || 0
	end

	def import_tax
		(price * 0.05 if imported?) || 0
	end

	def taxable?
		product_name.match(TAXFREE_REGEX).nil?
	end

	def imported?
		product_name.include?('imported')
	end

	def round(amount)
		(amount * 20).ceil / 20.0
	end
end