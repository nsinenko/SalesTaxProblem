require 'spec_helper'

describe Item do
	let(:product) { Product.new(name: 'Milk', price: 2.00) }
	let(:item) { Item.new(quantity: 2, product: product) }

	describe "#new" do
	    it "returns a Item object" do
	        expect(item).to be_an_instance_of Item
	    end

	    it "returns a correct quantity" do
	    	expect(item.quantity).to eq 2
	    end

	    it "returns a correct product" do
	    	expect(item.product).to eq product
		end

		it "returns a correct total" do
			expect(item.total).to eq 4.00
		end
	end
end