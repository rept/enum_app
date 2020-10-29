class CreateResidents < ActiveRecord::Migration[6.0]
  def change
    create_table :residents do |t|
      t.string :local_gender

      t.timestamps
    end
    add_reference :residents, :person,  foreign_key: true, null: false
  end
end
