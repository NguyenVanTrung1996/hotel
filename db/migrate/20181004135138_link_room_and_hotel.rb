class LinkRoomAndHotel < ActiveRecord::Migration[5.2]
  def change
    create_table :hotel_rooms do |t|
      t.references :hotel, foreign_key: true
      t.references :room, foreign_key: true
      t.string :price

      t.timestamps
    end
  end
end
