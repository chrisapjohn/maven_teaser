class AddEmails < ActiveRecord::Migration
  def up
  	create_table :emails do |t|
  		t.string :email
  end

  def down
  	drop_table :emails
  end
end
