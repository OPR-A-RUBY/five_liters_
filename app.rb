# 5 БКУВ - ДЛЯ ТИНЬКОФФ
# Программа угадывания слова из 5 букв приложения Тинькофф

def begin_screen  # ОЧИСТКА ЭКРАНА В КОНСОЛИ - (для Linux)

end

def fill_alphavit  # ЗАПОЛНИТЬ ХЭШ - СОСТОЯНИЯ АЛФАМИТА НУЛЯМИ -> $hh_b[key]=[0,0]
  #           0        1         2         3
  #           12345678901234567890123456789012 
  alphavit = 'АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯ'

  arr_b = alphavit.split("") # ['А', 'Б', 'В', 'Г', 'Д', 'Е', ... 'Я'] - key
  #         N    Y         
  arr_0 = ["-", "-"]    # Два флага для описания состояния буквы  "N"  "Y"  
			# буква в слове ОТСУТСТВУЕТ  = value[0] = "N"  "-"
			# буква в слове ПРИСУТСТВУЕТ = value[1] = "-"  "Y"
			# по букве НЕТ ДАННЫХ = value[0] = value[1] = "-"
  #puts alphavit              # DEBUG
  #puts arr_b                 # DEBUG
  #puts arr_0                 # DEBUG

  arr_b.each do |item|
    $hh_b [item] = arr_0      # Заполняем хэш => [0,0] - нет данных
  end
end

def control_world 
  
end

def out_hh_b  # ВЫВОД ХЭШ - СОСТОЯНИЙ АЛФАВИТА
  liters = '' 
  notexist = ''
  exist = ''
  $hh_b.each do |key, value|
    liters = liters + key
    notexist = notexist + value[0].to_s
    exist = exist + value[1].to_s
  end
  puts 'Hash viewing:'
  puts liters
  puts notexist
  puts exist
end

def test_out_hh_b  # ТЕСТИРОВАНИЕ МЕТОДА 'out_hh_b' 
  $hh_b['К'] = [0,1]
  $hh_b['Д'] = [1,0]
  $hh_b['П'] = [0,1]
  puts $hh_b                  # DEBUG

  puts ' '
  out_hh_b
end

def fill_tablo  # ЗАПОЛНИТЬ ХЭШ ТАБЛО "МИНУСАМИ" 
  $hh_tablo = {'1' => {'Y' => '-', 'N' => '-'},
	       '2' => {'Y' => '-', 'N' => '-'}, 
	       '3' => {'Y' => '-', 'N' => '-'}, 
	       '4' => {'Y' => '-', 'N' => '-'}, 
	       '5' => {'Y' => '-', 'N' => '-'}
	      }
end 

$hh_b = {}               # Хэш для описания состояний букв АЛФАВИТА
fill_alphavit            # Наполнить ХЭШ сосотояния алфавита => [0,0]
test_out_hh_b            # Тестируем вывод ХЕША состояния алфавита в консоль
 
c_word = 'ВЕДРО' # Претендент
target = 'КРЫЛО' # Целевое (искомое) слово - оно программе не известно

$hh_tablo = {}           # Хэш для описания состояний ТАБЛО

