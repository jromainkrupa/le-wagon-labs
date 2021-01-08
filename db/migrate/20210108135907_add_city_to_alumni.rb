class AddCityToAlumni < ActiveRecord::Migration[6.0]
  def change
    add_column :alumnis, :city, :string
  end
end
