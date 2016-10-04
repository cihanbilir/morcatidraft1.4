class CreateKisisels < ActiveRecord::Migration
  def change
    create_table :kisisels do |t|
      t.references :basvuran, index: true
      t.date :dogum_yili
      t.string :meslek
      t.integer :is_durumu
      t.integer :sosyal_guvence_durumu
      t.string :sosyal_guvence_durumu_ssk_free
      t.string :sosyal_guvence_durumu_diger_free
      t.string :il_ilce
      t.integer :medeni_durum
      t.date :evlilik_yili
      t.integer :cocuk_sayisi
      t.integer :uyruk
      t.string :uyruk_diger_free
      t.string :dili
      t.integer :cevirmen_ihtiyaci
      t.string :cevirmen_ihtiyaci_evet_free
      t.integer :engellilik_durumu
      t.string :engellilik_durumu_var_free
      t.integer :hamilelik
      t.integer :ruhsal_destek
      t.string :ruhsal_destek_evet_free
      t.integer :intihar_girisimi
      t.text :notlar
      t.date :hamilelik_evet_tarih
      t.integer :hamilelik_evet_doktor

      t.timestamps
    end
  end
end
