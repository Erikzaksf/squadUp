class AddColumnToPosts < ActiveRecord::Migration[5.1]
  def change
    change_table :posts do |t|
      t.column :user_id, :integer
    end
  end
end
