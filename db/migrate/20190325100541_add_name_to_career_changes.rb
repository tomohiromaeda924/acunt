class AddNameToCareerChanges < ActiveRecord::Migration[5.2]
  def change
    add_column :career_changes, :name, :string
    add_column :career_changes, :email, :string
    add_column :career_changes, :user_id, :integer
    add_column :career_changes, :syokusyu, :string
    add_column :career_changes, :nennsyuu, :string
    add_column :career_changes, :kinnmuti, :string
    add_column :career_changes, :kinnmuzikann, :string
    add_column :career_changes, :kyuuzitu, :string
    add_column :career_changes, :zanngyou, :string
    add_column :career_changes, :sonota, :strin
    add_column :career_changes, :boki2, :string
    add_column :career_changes, :boki1, :string
    add_column :career_changes, :bkaikei2, :string
    add_column :career_changes, :bkaikei1, :string
    add_column :career_changes, :bokironn, :string
    add_column :career_changes, :zaimusyohyouronn, :string
    add_column :career_changes, :houzinnzei, :string
    add_column :career_changes, :syotokuzei, :string
    add_column :career_changes, :syouhizei, :string
    add_column :career_changes, :goukakusya, :string
    add_column :career_changes, :kaikeisi, :string
  end
end
