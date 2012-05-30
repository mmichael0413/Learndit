class Code < ActiveRecord::Base
  has_many :tag_joins, :dependent => :destroy
  has_many :tags, :through => :tag_joins
  
  accepts_nested_attributes_for :tags
  
  validates_presence_of :content, :description
end
