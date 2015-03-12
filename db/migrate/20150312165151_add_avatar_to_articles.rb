class AddAvatarToArticles < ActiveRecord::Migration
  def change
    add_attachment :articles, :avatar
  end
end
