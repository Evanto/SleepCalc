class UserTime < ActiveRecord::Migration[5.0]
  def change
    create_table :UserTime do |t|
      t.integer :hours
      t.integer :mins
    end
  end
end
