module Printer
	def self.print_receipt(receipt)
		output = ""
		receipt.items.each do |item|
			output += "#{item}\n"
		end

		output += "\nSales Taxes: %.2f\n" %receipt.sales_tax
		output += "Total: %.2f\n" %receipt.total
	end
end