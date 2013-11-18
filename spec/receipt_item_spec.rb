require 'spec_helper'

describe ReceiptItem do
	let(:product) { Product.new(:name => 'Milk', :price => 2.00) }
	let(:receipt_item) { ReceiptItem.new(:quantity => 2, :product => @product) }

	describe "#new" do
	    it "returns a ReceiptItem object" do
	        expect(receipt_item).to be_an_instance_of ReceiptItem
	    end

	    it "returns a correct quantity" do
	    	expect(receipt_item.quantity).to eq 2
	    end

	    it "returns a correct product" do
	    	expect(receipt_item.product).to eq product
		end

		it "returns a correct total" do
			expect(receipt_item.total).to eq 4.00
		end
	end
end