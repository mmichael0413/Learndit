class Tag < ActiveRecord::Base
  belongs_to :code

  validates_uniqueness_of :name
  validates_presence_of :code_id, :name
end
