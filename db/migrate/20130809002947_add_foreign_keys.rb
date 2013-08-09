class AddForeignKeys < ActiveRecord::Migration
  def change
  	add_column :advisors, :user_id, :integer
  	add_column :users, :advisor_id, :integer
  end
end
