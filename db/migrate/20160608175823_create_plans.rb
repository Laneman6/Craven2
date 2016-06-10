class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :week_day
      t.string :category
      t.string :date
      t.integer :user_id

      t.timestamps

    end
  end
end
