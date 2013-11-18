class Tax
	TAXFREE = ["book", "chocolate", "pills"]
	TAXFREE_REGEX = Regexp.new(TAXFREE.join("|"))

	attr_reader :item, :product_name

	def initialize(item)
		@item = item
		@product_name = item.product.name
	end

	def total_tax
		round(sales_tax + import_tax)
	end

private
	def round(amount)
		(amount * 20).round / 20.0
	end

	def sales_tax
		(item.total * 0.1 if taxable?) || 0
	end

	def import_tax
		(sales_tax * 0.05 if imported?) || 0
	end

	def taxable?
		product_name.match(TAXFREE_REGEX).nil?
	end

	def imported?
		product_name.include?('imported')
	end
end