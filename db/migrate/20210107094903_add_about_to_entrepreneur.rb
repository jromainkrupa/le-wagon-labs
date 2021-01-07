class AddAboutToEntrepreneur < ActiveRecord::Migration[6.0]
  def change
    add_column :entrepreneurs, :about, :text
  end
end
