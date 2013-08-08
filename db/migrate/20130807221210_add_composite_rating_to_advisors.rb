class AddCompositeRatingToAdvisors < ActiveRecord::Migration
  def change
  	add_column :advisors, :composite_rating, :integer
  end
end