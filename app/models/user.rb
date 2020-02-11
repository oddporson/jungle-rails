class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :password, length: { minimum: 5} 

  def self.authenticate_with_credentials(email, password)
    # @user=[User.new(email: email, password: password, password_confirmation: password)]
    user = User.find_by(email: email.strip.downcase)
    if(user && user.authenticate(password))
      return user
    else
      return nil
    end
  end
end
