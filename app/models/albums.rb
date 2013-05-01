class Albums < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :photos
end
