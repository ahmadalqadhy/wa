class CreateLegislators < ActiveRecord::Migration[5.2]
  def change
    create_table :legislators do |t|
      t.string :name, null: false
      t.string :party, null: false
      t.string :chamber, null: false
      t.timestamps
    end
    add_index :legislators, :name, unique: true
  end
end
