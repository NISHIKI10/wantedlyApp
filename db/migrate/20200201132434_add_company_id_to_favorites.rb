class AddCompanyIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :company_id, :string
  end
end
