class Basvuru < ActiveRecord::Base
  belongs_to :basvuran
  belongs_to :gonullu
  has_many :siginak_ziyarets
end
