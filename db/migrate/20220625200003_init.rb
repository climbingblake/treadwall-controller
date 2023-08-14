class Init < ActiveRecord::Migration[7.0]
  def change
    create_table :holds do |t|
      t.string :name
      t.text :description
      t.string :address
    end
    create_table :problems do |t|
      t.string :name
      t.text :description
      t.string :setter
      t.string :grade
    end
    create_table :holds_problems do |t|
      t.integer :hold_id
      t.integer :problem_id
      t.string :rgb
    end
    create_table :leds do |t|
      t.integer :problem_id
      t.string :address
      t.string :rgb
    end
  end
end
