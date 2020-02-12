require 'rails_helper'

RSpec.feature "Visitors navigates to product details page from homepage", type: :feature, js: true do

  #SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    @category.products.create!(
      name:  Faker::Hipster.sentence(3),
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )
  end


    scenario "They see product detail" do
      #ACT
      visit root_path

      body = page.find('.product')
      body.find('header a').click
      page.find('.products-show')

      #DEBUG
      save_screenshot

      #VERIFY
      # puts page.html
      expect(page).to have_css '.products-show'
    end





end
