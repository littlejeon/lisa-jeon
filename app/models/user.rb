class User < ActiveRecord::Base
  has_many :projects
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :name, :email
end
