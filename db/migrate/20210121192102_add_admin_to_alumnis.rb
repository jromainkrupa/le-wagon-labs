class AddAdminToAlumnis < ActiveRecord::Migration[6.0]
  def change
    add_column :alumnis, :admin, :boolean, default: false
  end
end
