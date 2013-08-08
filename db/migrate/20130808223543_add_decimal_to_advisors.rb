class AddDecimalToAdvisors < ActiveRecord::Migration
  def change
		change_column :advisors, :composite_rating, :decimal, :default => 0.5, :scale => 3
  	change_column :advisors, :active_passive, :decimal, :default => 0.5, :scale => 3
  	change_column :advisors, :high_touch_low_touch, :decimal, :default => 0.5, :scale => 3
  	change_column :advisors, :follower_contrarian, :decimal, :default => 0.5, :scale => 3
  	change_column :advisors, :high_iq_low_iq, :decimal, :default => 0.5, :scale => 3
  end
end