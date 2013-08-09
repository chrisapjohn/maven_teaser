class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  has_many :ratings

  has_many :questions

  has_many :advisors, :through => :matches

 #  has_many :evaluations, class_name: "RSEvaluation", as: :source

	# def voted_for?(question)
	#   evaluations.where(target_type: question.class, target_id: question.id).present?
	# end

end
