class CreateTaxConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :tax_consultations do |t|

      t.timestamps
    end
  end
end
