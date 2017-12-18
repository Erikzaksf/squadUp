class AddUserNameToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.column :user_name, :text
    end
  end
end
