class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.references :user, foreign_key: true
      t.references :article, foreign_key: true
      t.string :user_role

      t.timestamps
    end
  end
end
