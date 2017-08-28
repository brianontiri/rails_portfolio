class CreateReferences < ActiveRecord::Migration[5.0]
  def change
    create_table :references do |t|
      t.string :name
      t.text :location
      t.integer :contact
      t.text :email

      t.timestamps
    end
  end
end
