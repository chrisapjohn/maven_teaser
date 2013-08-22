class DropForeignKeysFromAdvisorsUsers < ActiveRecord::Migration
  def change
  	remove_column :advisors, :user_id, :integer
  	remove_column :users, :advisor_id, :integer
  end
end
