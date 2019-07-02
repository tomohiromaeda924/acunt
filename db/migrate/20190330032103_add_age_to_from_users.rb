class AddAgeToFromUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :from_users, :年齢, :integer
  end
end
