class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :teacher, Default:false
      t.boolean :admin, Default:false

      t.timestamps null: false
    end
  end
end
