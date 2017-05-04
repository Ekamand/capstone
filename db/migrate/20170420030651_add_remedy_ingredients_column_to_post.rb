class AddRemedyIngredientsColumnToPost < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :ingredients, :string
  end
end
