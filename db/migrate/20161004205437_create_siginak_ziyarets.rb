class CreateSiginakZiyarets < ActiveRecord::Migration
  def change
    create_table :siginak_ziyarets do |t|
      t.date :giris
      t.date :cikis
      t.references :basvuru, index: true

      t.timestamps
    end
  end
end
