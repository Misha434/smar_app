class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :name
      t.string :email
      t.date :birthday

      t.timestamps
    end
  end
end
