require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validation' do
    before do
      @user = User.new(name:"Bruce Wayne", email:"brucewayne@justiceleague.com", password:"ihatesuperman", password_confirmation:"ihatesuperman")
    end

    it "should have a name" do
      @user.name = nil
      @user.valid?
      expect(@user.errors.full_messages).to_not be_empty
    end

    it "should have an email" do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "should have password" do
      @user.password = nil
      @user.password_confirmation = nil
      @user.valid?
      expect(@user).to_not be_valid
    end

    it "should match both passwords to match" do
      @user.password = "ihatesuperman"
      @user.password_confirmation = "iHatesupErm@n"
      @user.valid?
      expect(@user.errors.full_messages).to include ("Password confirmation doesn't match Password")
    end

    

    end
  end
