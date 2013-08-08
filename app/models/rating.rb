class Rating < ActiveRecord::Base
  attr_accessible :communication, :expertise, :trust, :advisor, :active, :high_touch, :follower, :high_iq

  validates_presence_of :trust, :communication, :expertise, :on => :create, :message => "can't be blank"

  belongs_to :advisor
  belongs_to :user

  after_commit :update_advisor_composite_rating
  after_commit :update_advisor_active_passive
  after_commit :update_advisor_high_touch_low_touch
  after_commit :update_advisor_follower_contrarian
  after_commit :update_advisor_high_iq_low_iq

  def update_advisor_composite_rating
    advisor.update_composite_rating
  end

	def update_advisor_active_passive
    advisor.update_active_passive
  end

  def update_advisor_high_touch_low_touch
    advisor.update_high_touch_low_touch
  end

  def update_advisor_follower_contrarian
    advisor.update_follower_contrarian
  end

  def update_advisor_high_iq_low_iq
    advisor.update_high_iq_low_iq
  end  

end