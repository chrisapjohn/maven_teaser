class Answer < ActiveRecord::Base
  attr_accessible :answer, :score

  belongs_to :advisor

  belongs_to :question

  has_reputation :votes, source: :user, aggregated_by: :sum
end
