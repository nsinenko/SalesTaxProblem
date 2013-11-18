class Printer
	attr_reader :receipt

	def initialize(receipt)
		@receipt = receipt
	end

	def print
		output = ""
		items.each do |item|
			output += "item\n"
		end

		output += "Sales Taxes: %.2f" %sales_tax
		output += "Total: %.2f" %total
	end
end