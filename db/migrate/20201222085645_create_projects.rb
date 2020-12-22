class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :pain
      t.text :target
      t.text :solution
      t.text :description
      t.string :status, default: 'pending'
      t.integer :duration
      t.integer :compensation_in_cents
      t.integer :progression, default: 0
      t.boolean :is_validated, default: false
      t.references :entrepreneur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
