class AddBulletsColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :bullets, :text
  end
end
