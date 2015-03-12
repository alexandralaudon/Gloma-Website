class Article < ActiveRecord::Base
  has_many :articles_categories
  has_many :categories, through: :articles_categories
end
