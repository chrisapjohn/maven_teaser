class AddForeignKeysToMessages < ActiveRecord::Migration
  def change
  	add_column :messages, :user_id, :integer
  	add_column :messages, :advisor_id, :integer
  end
end
