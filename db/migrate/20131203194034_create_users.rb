class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address, null: false
      t.timestamps
    end

    add_index :users, :email_address

    change_table :videos do |t|
      t.belongs_to :user
    end
  end
end
