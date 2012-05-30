class TagJoin < ActiveRecord::Base
  belongs_to :code
  belongs_to :tag
end
