class CreateBasvurans < ActiveRecord::Migration
  def change
    create_table :basvurans do |t|
      t.string :isim
      t.string :soyisim
      t.string :kod
      t.string :telefon
      t.string :mail
      t.references :gonullu, index: true
      t.references :user, index: true
      t.references :basvuru, index: true

      t.timestamps
    end
  end
end
