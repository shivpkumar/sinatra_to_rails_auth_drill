class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :password, :password_confirmation
  validates_uniqueness_of :name, :email
  validates_presence_of :name, :email, :password, :password_confirmation
end
