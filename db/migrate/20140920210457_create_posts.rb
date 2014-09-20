class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :email
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end