class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :name
      t.references :cycle, index: true, foreign_key: true
      t.text :text

      t.timestamps null: false
    end
  end
end
