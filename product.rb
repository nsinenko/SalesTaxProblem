class Product
	attr_reader :name, :price

	def initialize(args = {})
		@name = args[:name] || ""
		@price = args[:price] || 0
	end
end