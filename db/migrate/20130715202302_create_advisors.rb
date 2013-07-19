class CreateAdvisors < ActiveRecord::Migration
  def change
    create_table :advisors do |t|
      t.string :name
      t.string :firm
      t.string :type
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.string :sec_status
      t.integer :sec_disclosures
      t.string :finra_status
      t.integer :finra_disclosures

      t.timestamps
    end
  end
end
