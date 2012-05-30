class Tag < ActiveRecord::Base
  has_one :tag_join, :dependent => :destroy
  belongs_to :code
  
  validates_uniqueness_of :name
end
