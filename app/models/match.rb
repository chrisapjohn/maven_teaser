class Match < ActiveRecord::Base
  attr_accessible :active_passive, :follower_contrarian, :high_iq_low_iq, :high_touch_low_touch

  belongs_to :users

  belongs_to :advisors

end