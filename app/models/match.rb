class Match < ActiveRecord::Base
  attr_accessible :active_passive, :follower_contrarian, :high_iq_low_iq, :high_touch_low_touch

  belongs_to :users
  belongs_to :advisors

  def calculate_match(user, advisor)
  	self.active_passive_score = 1- (@user.active_passive - @advisor.active_passive).abs
  	self.high_touch_low_touch = 1- (@user.high_touch_low_touch - @advisor.high_touch_low_touch).abs
  	self.follower_contrarian = 1- (@user.follower_contrarian - @advisor.follower_contrarian).abs
  	self.final_match = (self.active_passive + self.high_touch_low_touch + self.follower_contrarian) / 3
  end
end