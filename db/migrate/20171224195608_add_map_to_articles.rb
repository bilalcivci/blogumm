class AddMapToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :map, :string
  end
end
