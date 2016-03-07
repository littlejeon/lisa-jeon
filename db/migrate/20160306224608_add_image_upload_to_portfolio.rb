class AddImageUploadToPortfolio < ActiveRecord::Migration
  def change
    add_attachment :portfolios, :image_upload
  end
end
