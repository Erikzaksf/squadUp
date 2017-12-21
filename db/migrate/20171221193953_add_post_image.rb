class AddPostImage < ActiveRecord::Migration[5.1]
  def change
    change_table :posts do |t|
      t.column :image, :string
    end
  end
end
