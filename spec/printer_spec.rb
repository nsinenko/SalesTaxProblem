require 'spec_helper'

describe Printer do
	before (:all) do
		products = [
			Product.new(name: "book", price: 12.49),
			Product.new(name: "music CD", price: 14.99),
			Product.new(name: "chocolate bar", price: 0.85),
		]

		@receipt = Receipt.new

		products.each_with_index do |product, index|
			@receipt.add_item Item.new(quantity: 1, product: product)
		end
    end

	describe "#print" do
		it "returns formatted output" do
		 	Printer.print_receipt(@receipt).should eq expected_output
		end
	end
end