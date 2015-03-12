class RenameArticlesCategoriesCombination < ActiveRecord::Migration
  def change
    rename_table :articles_categories, :combinations
  end
end
