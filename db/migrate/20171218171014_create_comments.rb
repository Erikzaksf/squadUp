class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.column :user_id, :integer
      t.column :reply, :text
      t.column :post_id, :integer

    t.timestamps
    end
  end
end
