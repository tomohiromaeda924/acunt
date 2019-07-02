class AddNameToJobOffer < ActiveRecord::Migration[5.2]
  def change
    add_column :job_offers, :gyoumu, :string
    add_column :job_offers, :keiyakukikann, :string
    add_column :job_offers, :siyoukikann, :string
    add_column :job_offers, :kinnmuti, :string
    add_column :job_offers, :kinnmuzikann, :string
    add_column :job_offers, :kyuukei, :string
    add_column :job_offers, :kyuuzitu, :string
    add_column :job_offers, :zikanngai, :string
    add_column :job_offers, :tinnginn, :text
    add_column :job_offers, :hokenn, :string
    add_column :job_offers, :name, :string
    
  end
end
