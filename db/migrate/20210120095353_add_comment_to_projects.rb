class AddCommentToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :comment, :text
  end
end
