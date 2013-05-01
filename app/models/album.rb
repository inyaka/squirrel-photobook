class Album < ActiveRecord::Base
  attr_accessible :description, :name, :order, :published_at
end
