class Portfolio < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image_upload, styles: { large: "600", medium: "400", thumb: "100" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_upload, content_type: /\Aimage\/.*\Z/


  # has_attached_file :avatar,
  #   styles: { thumb: "30x30", small: "64x64", med: "100x100", large: "200x200" },
  #   :default_url => 'default_:style.png'
  # validates_attachment :avatar,
  #   content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
  #   size: { in: 0..100.kilobytes }

  def portfolio_tags=(portfolio_tags)
    self.tags = portfolio_tags.to_s.upcase
  end

  def portfolio_tags
    self.tags
  end

end
