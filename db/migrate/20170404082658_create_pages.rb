class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :hours
      t.string :minutes

      t.timestamps
    end
  end
end
