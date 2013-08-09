class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.decimal :active_passive
      t.decimal :high_touch_low_touch
      t.decimal :follower_contrarian
      t.decimal :high_iq_low_iq
      t.belongs_to :advisor
      t.belongs_to :user

      t.timestamps
    end
  end
end
