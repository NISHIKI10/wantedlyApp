class AddAdminToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :admin, :boolean, default: false
  end
end
