class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.string :name
      t.text :body
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
