class AddRoleToCandidacies < ActiveRecord::Migration[6.0]
  def change
    add_reference :candidacies, :role, foreign_key: true
  end
end
