class AddTagIdToTagJoins < ActiveRecord::Migration
  def change
    add_column :tag_joins, :tag_id, :integer

  end
end
