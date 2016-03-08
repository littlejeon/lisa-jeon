class AddImageColumnToProjects < ActiveRecord::Migration
  def change
    add_attachment :projects, :image_upload
  end
end
