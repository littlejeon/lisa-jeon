class Project < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image_upload, styles: { large: "600", medium: "400", thumb: "100" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_upload, content_type: /\Aimage\/.*\Z/

end
