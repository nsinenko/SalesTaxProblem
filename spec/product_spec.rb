require 'spec_helper'

describe Product do
	context "with two arguments" do
		before :all do
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

	context "with no arguments" do
		before :all do
			@product = Product.new
		end

		describe "#new" do
		    it "returns a Product object" do
		        @product.should be_an_instance_of Product
		    end

		    it "returns a blank name" do
		    	@product.name.should eql('')
		    end

		    it "returns a zero price" do
		    	@product.price.should eql(0)
			end
		end
	end
end