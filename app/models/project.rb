class Project < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image_upload, styles: { large: "600", medium: "400", thumb: "100" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_upload, content_type: /\Aimage\/.*\Z/

  def bullets_array
    # binding.pry
    # self.bullets
    bullets = self.bullets.join("+ ")
    "+ " + bullets
  end

  def bullets_array=(bullets_array)
    # binding.pry
    # self.bullets = bullets_array
    bullets = bullets_array.split("+ ")
    bullets.shift
    self.bullets = bullets
  end

end
