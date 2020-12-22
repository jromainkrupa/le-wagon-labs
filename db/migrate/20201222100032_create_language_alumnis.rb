class CreateLanguageAlumnis < ActiveRecord::Migration[6.0]
  def change
    create_table :language_alumnis do |t|
      t.references :language, null: false, foreign_key: true
      t.references :alumni, null: false, foreign_key: true

      t.timestamps
    end
  end
end
