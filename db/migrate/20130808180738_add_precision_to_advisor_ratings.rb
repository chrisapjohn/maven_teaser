class AddPrecisionToAdvisorRatings < ActiveRecord::Migration
  def change
  	change_column :advisors, :active_passive, :integer, :default => 0.5, :scale => 3
  	change_column :advisors, :high_touch_low_touch, :integer, :default => 0.5, :scale => 3
  	change_column :advisors, :follower_contrarian, :integer, :default => 0.5, :scale => 3
  	change_column :advisors, :high_iq_low_iq, :integer, :default => 0.5, :scale => 3
  end
end
