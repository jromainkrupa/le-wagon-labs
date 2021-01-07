class AddAboutToAlumni < ActiveRecord::Migration[6.0]
  def change
    add_column :alumnis, :about, :text
  end
end
