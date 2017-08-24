class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.text :projects

      t.timestamps
    end
  end
end
