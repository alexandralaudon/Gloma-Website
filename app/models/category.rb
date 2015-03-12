class Category < ActiveRecord::Base
  has_many :combinations
  has_many :articles, through: :combinations
end
