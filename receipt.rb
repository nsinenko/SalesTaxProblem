class Receipt
	attr_reader :items

	def initialize
		@items = Array.new
	end

	def add_item(item)
		items << item
	end

	def total
		items.map(&:total).reduce(:+) || 0
	end

	def sales_tax
		taxes = items.collect { |i| Tax.new(i) }
		taxes.map(&:total_tax).reduce(:+) || 0
	end
end