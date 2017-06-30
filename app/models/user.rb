class User < ActiveRecord::Base
  include BCrypt

  validates :email, :password, presence: true
  validates :email, uniqueness: true 


  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(hashed_password)
    self.password_hash = @password
  end

 def self.authenticate(email, password)
    user = User.find_by(email: params[:user][:email])
    if user.password == params[:user][:password]
      user
    else
      nil
    end   
  end
end
