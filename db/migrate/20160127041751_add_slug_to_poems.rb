class AddSlugToPoems < ActiveRecord::Migration
  def change
    add_column :poems, :slug, :string
  end
end
