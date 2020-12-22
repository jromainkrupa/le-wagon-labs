class CreateSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties do |t|
      t.string :language
      t.string :type
      t.integer :rating
      t.references :alumni, null: false, foreign_key: true

      t.timestamps
    end
  end
end
