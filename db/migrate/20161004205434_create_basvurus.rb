class CreateBasvurus < ActiveRecord::Migration
  def change
    create_table :basvurus do |t|
      t.references :basvuran, index: true
      t.date :ilk_basvuru_tarihi
      t.references :gonullu, index: true
      t.integer :mc_destek_alma_durumu
      t.integer :iletisime_gecen
      t.integer :iletisime_gecme_yolu
      t.text :notlar
      t.integer :mc_siginakta_kaliyor

      t.timestamps
    end
  end
end
