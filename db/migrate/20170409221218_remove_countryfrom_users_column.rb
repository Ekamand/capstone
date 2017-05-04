class RemoveCountryfromUsersColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :country, :string
  end
end
