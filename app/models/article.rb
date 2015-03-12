class Article < ActiveRecord::Base
  has_many :combinations
  has_many :categories, through: :combinations
end
