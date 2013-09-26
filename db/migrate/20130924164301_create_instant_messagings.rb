class CreateInstantMessagings < ActiveRecord::Migration
  def change
    create_table :instant_messagings do |t|
      t.string :type
      t.string :address

      t.timestamps
    end
  end
end
