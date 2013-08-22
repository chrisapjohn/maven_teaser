class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  acts_as_messageable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  #after_commit :update_matches

  #acts_as_messageable

  has_many :ratings

  has_many :questions

  has_many :matches
  has_many :advisors, :through => :matches

  def update_matches(advisor)
    advisor.each do |advisor|
      calculate_match(self, advisor)
    end
  end
end
