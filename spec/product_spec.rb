require 'spec_helper'

describe Product do
	before :each do
		@product = Product.new(:name => 'Milk', :price => 2.00)
	end

	describe "#new" do
	    it "returns a Product object" do
	        @product.should be_an_instance_of Product
	    end

	    it "returns a correct name" do
	    	@product.name.should eql('Milk')
	    end

	    it "returns a correct price" do
	    	@product.price.should eql(2.00)
		end
	end

end