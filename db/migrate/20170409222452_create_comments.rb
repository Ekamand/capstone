class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :comment_text

      t.timestamps
    end
  end
end
