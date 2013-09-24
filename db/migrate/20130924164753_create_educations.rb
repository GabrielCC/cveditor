class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.date :from
      t.date :to
      t.boolean :ongoing
      t.string :title
      t.string :organization_name
      t.string :level
      t.text :description

      t.timestamps
    end
  end
end
