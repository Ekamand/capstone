class AddStatusColumn < ActiveRecord::Migration[5.0]
  def change
  	add_column :favorites, :status, :string
  end
end
