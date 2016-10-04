class CreateSiddets < ActiveRecord::Migration
  def change
    create_table :siddets do |t|
      t.references :basvuran, index: true
      t.integer :siddet_turu
      t.integer :fiziksel_turu
      t.integer :psikolojik_turu
      t.integer :cinsel_turu
      t.integer :ekonomik_turu
      t.integer :dijital_turu
      t.integer :takip_turu
      t.string :siddet_diger_free
      t.text :notlar
      t.integer :uygulayan
      t.string :uygulayan_kurum_free
      t.string :uygulayan_diger_free
      t.integer :uygulayan_partner_sure_yil
      t.date :basladigi_donem
      t.string :basladigi_donem_diger_free
      t.string :sikligi
      t.string :arttigi_azaldigi_donemler
      t.string :yaralanmalar_verdigi_zarar
      t.integer :darp_raporu_var
      t.integer :baska_kanit_belge_var

      t.timestamps
    end
  end
end
