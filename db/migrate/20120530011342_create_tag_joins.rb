class CreateTagJoins < ActiveRecord::Migration
  def change
    create_table :tag_joins do |t|

      t.timestamps
    end
  end
end
