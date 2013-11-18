class Product
	attr_reader :name, :price

	def initialize(args = {})
		@name = args[:name] || ""
		@price = args[:price].to_f || 0
	end
end