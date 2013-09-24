class CreateAdditionalInformations < ActiveRecord::Migration
  def change
    create_table :additional_informations do |t|
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
