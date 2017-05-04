class ChangeCommentsToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :comments, :comment_text, :string
  end
end
