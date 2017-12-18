class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.column :title, :text
      t.column :category, :text
      t.column :body, :text
      

      t.timestamps
    end
  end
end
