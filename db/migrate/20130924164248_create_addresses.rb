class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end
end
