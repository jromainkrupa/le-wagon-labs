class AddSvgToLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :svg, :string
  end
end
