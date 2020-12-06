class AddLegSession < ActiveRecord::Migration[5.2]
  def change
    add_column :legislators, :session_token, :string
    add_index :legislators, :session_token, unique: true
    add_column :constituents, :session_token, :string
    add_index :constituents, :session_token, unique: true
  end
end
