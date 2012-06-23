class Code < ActiveRecord::Base
  has_many :tags, :dependent => :destroy
  
  accepts_nested_attributes_for :tags,
    :reject_if => lambda { |attributes| attributes[:name].blank? },
    :allow_destroy => true
  
  validates_presence_of :content, :description
  validates_associated :tags

  #Method for a simple search form
  def self.search(search)
    if search
      where('description LIKE ?', "%#{search}%")
    else
      scoped
    end
    
  end
end
