class CreateCrappers < ActiveRecord::Migration
  def change
    create_table :crappers do |t|
      t.string :city
      t.string :district
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
