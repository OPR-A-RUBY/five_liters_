# Программа угадывания слова из 
# 5 букв
# для Тинькофф

def begin_screen # Очистка экрана (для Linux)
end

def alphavit
end
#            0        1         2         3
#            12345678901234567890123456789012 
 alphavit = 'АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯ'

 arr_b = alphavit.split("") # ['А', 'Б', 'В', 'Г', 'Д', 'Е', ... 'Я']
 arr_0 = [0,0]              # Два флага для описания состояния буквы
                            # 0-ой - наличие буквы в слове
			    # 1-ый - стоит на нужном месте (здесь ошибка)

 puts alphavit              # DEBUG
 puts arr_b                 # DEBUG
 puts arr_0                 # DEBUG

 hh_b = {}                  # Хэш для описания состояний букв
 arr_b.each do |item|

   hh_b [item] = arr_0

 end

 puts hh_b                  # DEBUG
