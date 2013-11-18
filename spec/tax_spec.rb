require 'spec_helper'

describe Tax do
	def tax(name)
		product = Product.new(name: name, price: 10)
		item = Item.new(quantity: 2, product: product )
		Tax.new(item)
	end

	describe "total_tax" do
		context "when products are tax-free" do
			it "returns zero tax on food" do
				tax("box of chocolates").total_tax.should eq 0
			end

			it "returns zero tax on books" do
				tax("book").total_tax.should eq 0
			end

			it "returns zero tax on medical" do
				tax("pills").total_tax.should eq 0
			end
		end

		context "when product are taxable" do 
			it "returns correct sales tax on" do
				tax("bottle of perfume").total_tax.should eq 2.00
			end

			it "returns correct sales tax including import duty" do
				tax("bottle of imported perfume").total_tax.should eq 2.10
			end
		end
	end
end