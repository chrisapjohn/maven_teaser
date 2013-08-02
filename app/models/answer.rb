class Answer < ActiveRecord::Base
  attr_accessible :answer, :score

  belongs_to :advisor

  belongs_to :question

end
