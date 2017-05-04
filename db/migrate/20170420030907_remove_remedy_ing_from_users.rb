class RemoveRemedyIngFromUsers < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :ingredients, :string
  end
end
