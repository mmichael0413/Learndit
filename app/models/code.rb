class Code < ActiveRecord::Base
  has_many :tag_joins, :dependent => :destroy
  has_many :tags, :through => :tag_joins
  
  accepts_nested_attributes_for :tags
  
  validates_presence_of :content, :description
  
  #Method for a simple search form
  def self.search(search)
    if search
      where('content LIKE ?', "%#{search}%")
    else
      scoped
    end
    
  end
end
