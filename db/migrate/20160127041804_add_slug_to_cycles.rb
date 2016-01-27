class AddSlugToCycles < ActiveRecord::Migration
  def change
    add_column :cycles, :slug, :string
  end
end
