class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :link
      t.integer :label_order
      t.string :category

      t.timestamps
    end
  end
end
