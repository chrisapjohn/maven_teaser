class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :trust
      t.integer :communication
      t.integer :expertise

      t.timestamps
    end
  end
end
