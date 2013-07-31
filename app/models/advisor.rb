class Advisor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :address, :email, :finra_disclosures, :finra_status, :firm, :name, :phone, :sec_disclosures, :sec_status, :advisor_type, :website

  has_many :ratings

  has_many :answers

  def aggregate
  	trust = self.ratings.average('trust')
  	puts trust
  end

  def self.search(search)
	  if search
	    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end

end
