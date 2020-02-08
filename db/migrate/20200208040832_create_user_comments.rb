class CreateUserComments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_comments do |t|

      t.integer :user_id
      t.integer :post_id
      t.text :body
      t.timestamps
    end
  end
end
