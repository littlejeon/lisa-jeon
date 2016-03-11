class User < ActiveRecord::Base
  has_many :projects
  has_many :portfolios
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :name, :email

  has_attached_file :image_upload, styles: { large: "600", thumb: "100" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_upload, content_type: /\Aimage\/.*\Z/

end
