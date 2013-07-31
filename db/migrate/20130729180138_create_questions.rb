class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :details

      t.timestamps
    end
  end
end
