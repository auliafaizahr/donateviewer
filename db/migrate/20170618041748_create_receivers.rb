class CreateReceivers < ActiveRecord::Migration[5.1]
  def change
    create_table :receivers do |t|
      t.string :nama
      t.string :jenis_kelamin
      t.date :tanggal_lahir
      t.text :alamat
      t.string :status

      t.timestamps
    end
  end
end
