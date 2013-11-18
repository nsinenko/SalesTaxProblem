require 'spec_helper'

describe Receipt do
	context "input 1" do
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

    	it "returns a Receipt object" do
	        expect(@receipt).to be_an_instance_of Receipt
	    end

       	it "has four items" do
	        expect(@receipt).to have(3).items
	    end

	    it "returns a correct total" do
	    	expect(@receipt.total).to eq 29.83
	    end

  	    it "returns a correct sales tax" do
	    	expect(@receipt.sales_tax).to eq 1.50
	    end
	end

	context "input 2" do
		before (:all) do
			products = [
				Product.new(name: "imported box of chocolates", price: 10),
				Product.new(name: "imported bottle of perfume", price: 47.50),
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
	        expect(@receipt).to have(2).items
	    end

	    it "returns a correct total" do
	    	expect(@receipt.total).to eq 65.15
	    end

  	    it "returns a correct sales tax" do
	    	expect(@receipt.sales_tax).to eq 7.65
	    end
	end

	context "input 3" do
		before (:all) do
			products = [
				Product.new(name: "imported bottle of perfume", price: 27.99),
				Product.new(name: "bottle of perfume", price: 18.99),
				Product.new(name: "packet of headache pills", price: 9.75),
				Product.new(name: "imported box of chocolates", price: 11.25)
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
end