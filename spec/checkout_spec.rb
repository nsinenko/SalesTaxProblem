require 'spec_helper'

describe Checkout do
	let(:checkout) { Checkout.new(checkout_input) }

	describe "#new" do
	    it "returns an Item object" do
	        expect(checkout).to be_an_instance_of Checkout
	    end

   	    it "creates a receipt" do
	        expect(checkout.receipt).to be_an_instance_of Receipt
	    end

	    it "has 3 receipt items" do
	    	expect(item.receipt).to have(3).items
	    end
	end

	describe "print_receipt" do
		it "prints out correct receipt" do
			expect(checkout.print_receipt).to eq expected_output
		end
	end
end