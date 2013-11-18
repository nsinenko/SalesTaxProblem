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
end