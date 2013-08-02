class AddAdvisorIdToAnswer < ActiveRecord::Migration
  def change
  	add_column :answers, :advisor_id, :integer
  end
end
