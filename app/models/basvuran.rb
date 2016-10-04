class Basvuran < ActiveRecord::Base
  belongs_to :gonullu
  belongs_to :user
  belongs_to :basvuru
  validates_formatting_of :telefon, using: :us_phone
  validates_formatting_of :mail, using: :email
end
