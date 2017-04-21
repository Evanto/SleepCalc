class CreateSleeps < ActiveRecord::Migration[5.0]
  def change
    create_table :sleeps do |t|
      t.time :hours
      t.time :minutes

      t.timestamps
    end
  end
end
