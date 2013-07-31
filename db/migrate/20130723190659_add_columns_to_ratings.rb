class AddColumnsToRatings < ActiveRecord::Migration
  def change
  		add_column :ratings, :active, :integer
  		add_column :ratings, :high_touch, :integer
  		add_column :ratings, :follower, :integer
  		add_column :ratings, :high_iq, :integer
  end
end
