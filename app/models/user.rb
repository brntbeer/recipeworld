require 'rubygems'
require 'RedCloth'
class User < ActiveRecord::Base

  textilize :bio

  validates_presence_of :name
  #has_many :comments
  has_many :recipes

end
