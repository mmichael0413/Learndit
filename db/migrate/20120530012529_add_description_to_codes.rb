class AddDescriptionToCodes < ActiveRecord::Migration
  def change
    add_column :codes, :description, :text

  end
end
