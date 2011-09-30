class Test < ActiveRecord::Base
  #Works if relationship is deleted
  has_many :test_children
end
