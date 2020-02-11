require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before do
      @category = Category.new(id: 1, name: "Technology")
      @product = Product.new(id: 1, name: "Turbo Hoverboard", price_cents: 30000, quantity: 10, category: @category)
    end

    # validation tests/examples here

    it "should have valid attribute" do
      expect(@product).to be_valid
    end

    it 'should have the product name' do
      @product.name = nil
      @product.valid? 
      expect(@product.errors.full_messages).to_not be_empty
    end

    it 'should have the product price' do
      @product.price_cents = nil
      @product.valid?
      expect(@product.errors.full_messages).to_not be_empty
    end

    it 'should have the product quantity' do
      @product.quantity = nil
      @product.valid?
      expect(@product.errors.full_messages).to_not be_empty
    end

    it 'should have the product in correct category' do
      @product.quantity = nil
      @product.valid?
      expect(@product.errors.full_messages).to_not be_empty
    end
    
  end
end

