class CreateUserInputs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_inputs do |t|
      t.integer :hours
      t.integer :mins

      t.timestamps
    end
  end
end
