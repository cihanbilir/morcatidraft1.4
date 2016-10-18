class Kisisel < ActiveRecord::Base
  belongs_to :basvuran
  
#   enum is_durumu:
#         {"İşçi (Tarım dışı)" => 0,
#         "Ev içinde gelir getiren faaliyet" => 1,
#         "Ücretli" => 2,
#         "Freelance" => 3,
#         "Ev dışında çalışmıyor" => 4,
#         "İşveren" => 5,
#         "İş arıyor" => 6,
#         "Emekli" => 7,
#         "Öğrenci" => 8}
        
#   enum sosyal_guvence:
#         {"Yok" => 0,
#         "Yeşil kart" => 1,
#         "Göçmen Kartı" => 2,
#         "Emekli" => 3,
#         "Çalışan" => 4,
#         "SSK" => 5,
#         "Diğer" => 6}
  
end
