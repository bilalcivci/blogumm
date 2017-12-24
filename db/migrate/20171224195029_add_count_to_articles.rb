class AddCountToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :count, :string
  end
end
