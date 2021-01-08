class CreateLanguageRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :language_roles do |t|
      t.references :role, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
