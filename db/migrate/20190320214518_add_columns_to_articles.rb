class AddColumnsToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :dek, :string
    add_column :articles, :img_src, :string
    add_column :articles, :posted, :boolean
  end
end
