class CreateGonullus < ActiveRecord::Migration
  def change
    create_table :gonullus do |t|
      t.string :isim

      t.timestamps
    end
  end
end
