class Rating < ActiveRecord::Base
  attr_accessible :communication, :expertise, :trust, :advisor

  belongs_to :advisor

end
