class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :accent_color, :string
  end
end
