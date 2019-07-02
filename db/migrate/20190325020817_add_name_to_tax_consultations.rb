class AddNameToTaxConsultations < ActiveRecord::Migration[5.2]
  def change
    add_column :tax_consultations, :name, :string
    add_column :tax_consultations, :email, :string
    add_column :tax_consultations, :message, :text
  end
end
