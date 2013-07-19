class AddBelongsToRatings < ActiveRecord::Migration
  def change
  	change_table :ratings do |t|
  		t.belongs_to :advisor
  	end
  end
end
