class RenameCategorizationsToArticlesCategories < ActiveRecord::Migration
  def change
    rename_table :categorizations, :articles_categories
  end
end
