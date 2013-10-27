class Item < ActiveRecord::Base
  attr_accessible :complete_by, :name
  belongs_to :user
end
