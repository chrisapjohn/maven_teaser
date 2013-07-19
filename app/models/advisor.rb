class Advisor < ActiveRecord::Base
  attr_accessible :address, :email, :finra_disclosures, :finra_status, :firm, :name, :phone, :sec_disclosures, :sec_status, :advisor_type, :website

  has_many :ratings

  def self.search(search)
	  if search
	    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end

end
