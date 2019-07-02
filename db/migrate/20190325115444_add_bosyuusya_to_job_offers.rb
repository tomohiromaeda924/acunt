class AddBosyuusyaToJobOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :job_offers, :bosyuusya, :string
    add_column :job_offers, :email, :string
    add_column :job_offers, :user_id, :integer
  end
end
