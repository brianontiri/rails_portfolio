class CreateSignUps < ActiveRecord::Migration
  def change
    create_table :sign_ups do |t|
      t.string :name
      t.string :emails
      t.string :password_digest

      t.timestamps
    end
  end
end
