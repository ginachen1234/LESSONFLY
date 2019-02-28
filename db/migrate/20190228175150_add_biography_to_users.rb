class AddBiographyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :biography, :text
  end
end
