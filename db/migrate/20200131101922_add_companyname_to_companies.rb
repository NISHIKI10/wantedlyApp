class AddCompanynameToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :companyname, :string
  end
end
