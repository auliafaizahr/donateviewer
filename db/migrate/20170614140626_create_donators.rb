class CreateDonators < ActiveRecord::Migration[5.1]
  def change
    create_table :donators do |t|
      t.string :nama
      t.string :jenis_kelamin
      t.text :alamat
      t.string :kontak

      t.timestamps
    end
  end
end
