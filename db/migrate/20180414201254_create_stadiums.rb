class CreateStadiums < ActiveRecord::Migration[5.1]
  def change
    create_table :stadiums do |t|
      t.string :name
      t.string :image
      t.string :country
      t.string :state
      t.string :city
      t.timestamps
    end
  end
end
