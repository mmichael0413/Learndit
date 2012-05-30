class AddCodeIdToTagJoins < ActiveRecord::Migration
  def change
    add_column :tag_joins, :code_id, :integer

  end
end
