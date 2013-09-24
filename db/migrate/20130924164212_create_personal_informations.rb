class CreatePersonalInformations < ActiveRecord::Migration
  def change
    create_table :personal_informations do |t|
      t.references :user, index: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :sex
      t.date :date_of_birth
      t.string :nationality

      t.timestamps
    end
  end
end
