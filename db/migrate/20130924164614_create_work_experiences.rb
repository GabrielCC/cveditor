class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.string :from
      t.string :to
      t.boolean :ongoing
      t.string :position
      t.string :employer_name
      t.text :description

      t.timestamps
    end
  end
end
