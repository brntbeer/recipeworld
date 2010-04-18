class Recipe < ActiveRecord::Base

  acts_as_versioned

  validates_presence_of :title
  belongs_to :user

end
