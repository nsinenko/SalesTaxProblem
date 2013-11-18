class Tax
	TAXFREE = ["book", "chocolate", "pills"]
	TAXFREE_REGEX = Regexp.new(TAXFREE.join("|"))

	attr_reader :item

	def initialize(item)
		@item = item
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
		item.product.name.match(TAXFREE_REGEX).nil?
	end

	def imported?
		item.product.name.include?('imported')
	end
end