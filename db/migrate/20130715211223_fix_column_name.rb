class FixColumnName < ActiveRecord::Migration
  def self.up
  	rename_column :advisors, :type, :advisor_type
  end

  def self.down
  end
end
