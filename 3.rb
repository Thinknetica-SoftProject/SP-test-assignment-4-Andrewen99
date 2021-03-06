## Задача №4:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:


locker_code = 0
File.readlines("data/3.txt").each do |line|
  int_array = line.split.map(&:to_i)
  locker_code += int_array.max - int_array.min
end
puts locker_code

## Также можно просуммировать все макс элементы и мин элементы из каждой строки, и потом вычесть из суммы макс элементов сумму минимальных
