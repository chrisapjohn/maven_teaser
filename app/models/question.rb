class Question < ActiveRecord::Base
  attr_accessible :details, :title, :topic

  belongs_to :user

  has_many :answers

  make_voteable
end
