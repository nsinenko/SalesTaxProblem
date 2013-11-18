require 'spec_helper'

describe Item do
	let(:product) { Product.new(name: 'music CD', price: 2.00) }
	let(:item) { Item.new(quantity: 2, product: product) }

	describe ".new" do
	    it "returns an Item object" do
	        expect(item).to be_an_instance_of Item
	    end

	    it "returns a correct quantity" do
	    	expect(item.quantity).to eq 2
	    end

	    it "returns a correct product" do
	    	expect(item.product).to eq product
		end
	end

	describe ".total" do
		it "returns a correct total" do
			expect(item.total).to eq 4.4
		end
	end

	describe ".to_s" do
		it "returns CSV output" do
			expect(item.to_s).to eq "2, music CD, 4.40"
		end
	end
end