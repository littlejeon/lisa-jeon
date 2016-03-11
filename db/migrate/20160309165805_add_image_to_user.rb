class AddImageToUser < ActiveRecord::Migration
  def change
    add_attachment :users, :image_upload
  end
end
