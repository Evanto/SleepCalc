class CreateUTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :u_times do |t|
      t.integer :hours
      t.integer :mins

      t.timestamps
    end
  end
end
