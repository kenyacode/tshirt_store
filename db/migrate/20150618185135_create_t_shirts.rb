class CreateTShirts < ActiveRecord::Migration
  def change
    create_table :t_shirts do |t|
      t.string :name
      t.string :brand
      t.string :size
      t.string :designer
      t.string :string
      t.text :description
      t.integer :price
      t.boolean :availability, default: true

      t.timestamps null: false
    end
  end
end
