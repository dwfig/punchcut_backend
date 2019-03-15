class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :text
      t.string :headline
      t.datetime :post_date

      t.timestamps
    end
  end
end
