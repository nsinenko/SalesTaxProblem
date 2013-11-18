require 'spec_helper'

describe Printer do
	before (:all) do
		products = [
			Product.new(name: "book", price: 12.49),
			Product.new(name: "music CD", price: 14.99),
			Product.new(name: "chocolate bar", price: 0.85),
		]

		receipt = Receipt.new

		products.each_with_index do |product, index|
			receipt.add_item Item.new(quantity: 1, product: product)
		end

		@printer = Printer.new(receipt)
    end

	describe "#new" do
	    it "returns a Printer object" do
	        expect(item).to be_an_instance_of Printer
	    end
	end

	describe "#print" do
		it "returns formatted output" do
			output = <<EOS
1, music CD, 16.49
1, chocolate bar, 0.85

Sales Taxes: 1.50
Total: 29.83
EOS
		end
	end
end