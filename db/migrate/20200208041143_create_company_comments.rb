class CreateCompanyComments < ActiveRecord::Migration[5.2]
  def change
    create_table :company_comments do |t|

      t.integer :company_id
      t.integer :post_id
      t.text :body
      t.timestamps
    end
  end
end
