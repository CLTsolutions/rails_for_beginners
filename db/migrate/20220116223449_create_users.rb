class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      # null: false is extra layer to make sure user has an email
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
