class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :plan_id
      t.string :title
      t.text :description
      t.text :recipe
      t.string :image
      t.string :source_link
      t.string :difficulty

      t.timestamps

    end
  end
end
