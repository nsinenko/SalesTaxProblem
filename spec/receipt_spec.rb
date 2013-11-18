require 'spec_helper'

describe Receipt do
	context "receipt with four items" do
		before (:all) do
			products = [
				Product.new(name: "imported bottle of perfume", price: 1.50),
				Product.new(name: "bottle of perfume", price: 1.75),
				Product.new(name: "packet of headache pills", price: 1.95),
				Product.new(name: "box of imported chocolates", price: 1.65)
			]

			@receipt = Receipt.new

			products.each_with_index do |product, index|
				@receipt.add_item Item.new(quantity: index + 1, product: product)
			end
	    end

    	it "returns a Receipt object" do
	        expect(@receipt).to be_an_instance_of Receipt
	    end

       	it "has four items" do
	        expect(@receipt).to have(4).items
	    end

	    it "returns a correct total" do
	    	expect(@receipt.total).to eq 17.45
	    end

  	    it "returns a correct sales tax" do
	    	expect(@receipt.sales_tax).to eq 0.50
	    end
	end

	context "receipt with zero items" do
		subject(:receipt) { Receipt.new }

		it { should be_an_instance_of Receipt }

		it { should have(0).items }

	    it "returns a zero total" do
	    	expect(receipt.total).to eq 0
	    end

	    it "returns a zero total" do
	    	expect(receipt.sales_tax).to eq 0
	    end
	end



	context "receipt with four items" do
		before (:all) do
			products = [
				Product.new(name: "imported bottle of perfume", price: 32.19),
				Product.new(name: "bottle of perfume", price: 20.89),
				Product.new(name: "packet of headache pills", price: 9.75),
				Product.new(name: "imported box of chocolates", price: 11.85)
			]

			@receipt = Receipt.new

			products.each_with_index do |product, index|
				@receipt.add_item Item.new(quantity: 1, product: product)
			end
	    end

    	it "returns a Receipt object" do
	        expect(@receipt).to be_an_instance_of Receipt
	    end

       	it "has four items" do
	        expect(@receipt).to have(4).items
	    end

	    it "returns a correct total" do
	    	expect(@receipt.total).to eq 74.68
	    end

  	    it "returns a correct sales tax" do
	    	expect(@receipt.sales_tax).to eq 6.70
	    end
	end
end