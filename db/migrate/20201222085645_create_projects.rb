class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :status
      t.string :duration
      t.string :compensation
      t.integer :progression
      t.boolean :is_validated
      t.references :entrepreneur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
