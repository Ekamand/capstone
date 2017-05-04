class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :post_text
      t.integer :rating
      t.string :written_by

      t.timestamps
    end
  end
end
