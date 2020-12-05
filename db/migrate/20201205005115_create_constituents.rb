class CreateConstituents < ActiveRecord::Migration[5.2]
  def change
    create_table :constituents do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.string :party, null: false
      t.timestamps
    end
  end
end
