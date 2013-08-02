class Question < ActiveRecord::Base
  attr_accessible :details, :title, :topic

  belongs_to :user

  has_many :answers

  has_reputation :votes, source: :user, aggregated_by: :sum
end
