class CreateCandidacies < ActiveRecord::Migration[6.0]
  def change
    create_table :candidacies do |t|
      t.string :status, default: "pending"
      t.boolean :is_validated, default: false
      t.references :alumni, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
