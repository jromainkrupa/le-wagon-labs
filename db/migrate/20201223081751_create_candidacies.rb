class CreateCandidacies < ActiveRecord::Migration[6.0]
  def change
    create_table :candidacies do |t|
      t.string :status, default: 'pending'
      t.references :project, null: false, foreign_key: true
      t.references :alumni, null: false, foreign_key: true

      t.timestamps
    end
  end
end
