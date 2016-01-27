class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
