class Rating < ActiveRecord::Base
  attr_accessible :communication, :expertise, :trust, :advisor

  validates_presence_of :trust, :communication, :expertise

  belongs_to :advisor

  def calculate_average_rating(attribute)
  	ratings = @advisor.ratings
  	sum = ratings.sum(attribute)
  	count = ratings.count(attribute)
  	sum/count.to_f
  end

end
