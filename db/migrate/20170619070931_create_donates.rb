class CreateDonates < ActiveRecord::Migration[5.1]
  def change
    create_table :donates do |t|
      t.string :donator
      t.date :tgl_donasi
      t.boolean :dana
      t.boolean :barang
      t.integer :besar_dana

      t.timestamps
    end
  end
end
