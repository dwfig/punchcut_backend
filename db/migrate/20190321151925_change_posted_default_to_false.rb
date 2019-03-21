class ChangePostedDefaultToFalse < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:articles, :posted, from: nil, to: false)
  end
end
