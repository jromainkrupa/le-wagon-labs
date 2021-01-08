class AddCategoryToLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :category, :string
  end
end
