class Advisor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :address, :email, :finra_disclosures, :finra_status, :firm, :name, :phone, :sec_disclosures, :sec_status, :advisor_type, :website
  attr_accessible :avatar

  has_attached_file :avatar, 
                    :styles => { 
                      :medium => "200x200>", 
                      :thumb => "100x100>" }, 
                    :default_url => "/images/:style/missing.png"

  has_many :ratings

  has_many :answers

  has_many :questions, :through => :answers

  has_reputation :answering_skill,
      :source => { :reputation => :votes, :of => :answers }

  def aggregate_profile
    Advisor.ratings.all()
  end

  def self.search(search)
	  if search
	    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end

end
