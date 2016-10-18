class AddIntiharFreeToKisisels < ActiveRecord::Migration
  def change
    add_column :kisisels, :intihar_girisimi_evet_free, :string
  end
end
