class ChangeUserNameField < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      change_table :users do |t|
        dir.up   { t.change :user_name, :text}
        dir.down { t.change :user_name, :text, unique: true,  null: false }
      end
    end
  end
end
