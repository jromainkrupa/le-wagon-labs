class AddAdminToEntrepreneurs < ActiveRecord::Migration[6.0]
  def change
    add_column :entrepreneurs, :admin, :boolean, default: false
  end
end
