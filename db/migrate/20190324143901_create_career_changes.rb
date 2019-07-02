class CreateCareerChanges < ActiveRecord::Migration[5.2]
  def change
    create_table :career_changes do |t|

      t.timestamps
    end
  end
end
