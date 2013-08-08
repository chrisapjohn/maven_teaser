class AddRatingsToAdvisors < ActiveRecord::Migration
  def change
  	add_column :advisors, :active_passive, :integer
  	add_column :advisors, :high_touch_low_touch, :integer
  	add_column :advisors, :follower_contrarian, :integer
  	add_column :advisors, :high_iq_low_iq, :integer
  end
end
