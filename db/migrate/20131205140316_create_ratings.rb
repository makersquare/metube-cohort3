class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.belongs_to :video
      t.belongs_to :user
      t.timestamps
    end
  end
end
