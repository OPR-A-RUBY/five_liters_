# Программа угадывания слова из 
# 5 букв
# для Тинькофф

def begin_screen # Очистка экрана (для Linux)
end

def alphavit
end
#          0        1         2         3
#          12345678901234567890123456789012 
 alphavit = 'АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯ'

 arr_b = alphavit.split("")
 arr_0 = [0,0]

 puts alphavit
 puts arr_b
 puts arr_0

 hh_b = {}
 arr_b.each do |item|

   hh_b [item] = arr_0

 end

 puts hh_b
