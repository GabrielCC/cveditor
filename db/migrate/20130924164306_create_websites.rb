class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :link

      t.timestamps
    end
  end
end
