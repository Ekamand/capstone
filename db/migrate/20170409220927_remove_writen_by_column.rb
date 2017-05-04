class RemoveWritenByColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :posts, :written_by, :string
  end
end
