require 'spec_helper'

describe Tax do
	def tax_on(name)
		product = Product.new(name: name, price: 10)
		Tax.new(product)
	end

	describe ".new" do
		it "return a tax object" do
		    expect(tax_on("name")).to be_an_instance_of Tax
	    end
	end

	describe ".total_tax" do
		context "when products are tax-free" do
			it "returns a zero tax on food" do
				tax_on("box of chocolates").total_tax.should eq 0
			end

			it "returns a zero tax on books" do
				tax_on("book").total_tax.should eq 0
			end

			it "returns a zero tax on medical" do
				tax_on("pills").total_tax.should eq 0
			end
		end

		context "when product are taxable" do 
			it "returns correct sales tax on" do
				tax_on("bottle of perfume").total_tax.should eq 1.00
			end

			it "returns correct sales tax including import duty" do
				tax_on("bottle of imported perfume").total_tax.should eq 1.5
			end
		end
	end
end