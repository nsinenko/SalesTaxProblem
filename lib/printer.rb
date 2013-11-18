module Printer
	def self.print_receipt(receipt)
		output = ""
		
		receipt.items.each { |item| output += "#{item}\n" }

		output += "\nSales Taxes: %.2f\n" %receipt.sales_tax
		output += "Total: %.2f\n" %receipt.total
	end
end