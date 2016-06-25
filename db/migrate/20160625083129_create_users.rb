class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_id
      t.string :nickname

      t.timestamps null: false
    end
  end
end
