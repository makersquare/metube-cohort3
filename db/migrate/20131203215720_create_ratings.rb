class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.belongs_to :videos
      t.belongs_to :users
    end
  end
end
