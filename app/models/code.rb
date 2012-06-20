class Code < ActiveRecord::Base
  has_many :tag_joins, :dependent => :destroy
  has_many :tags, :through => :tag_joins
  
  accepts_nested_attributes_for :tags,
    :reject_if => proc { |attributes| attributes['name'].blank? },
    :allow_destroy => true
  
  validates_presence_of :content, :description

  #Method for a simple search form
  def self.search(search)
    if search
      where('description LIKE ?', "%#{search}%")
    else
      scoped
    end
    
  end
end
