class Rating < ActiveRecord::Base
  attr_accessible :communication, :expertise, :trust, :advisor, :active, :high_touch, :follower, :high_iq

  validates_presence_of :trust, :communication, :expertise, :on => :create, :message => "can't be blank"

  belongs_to :advisor
  belongs_to :user

  def calculate_average_rating(attribute)
  	ratings = @advisor.ratings
  	sum = ratings.sum(attribute)
  	count = ratings.count(attribute)
  	sum/count.to_f
  end

end
