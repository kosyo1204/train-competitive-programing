# 1_1_C

# l = gets.split(' ').map(&:to_i)
# area = l[0] * l[1]
# perimeter = (l[0]+l[1]) * 2
# puts format("%d %d", area, perimeter)

# 1_1_D

# l = gets.to_i
# h = l / 3600
# m = (l % 3600) / 60
# s = l % 60
# puts format("%d:%d:%d", h, m, s)

# 1_2_A
# l = gets.split(' ').map(&:to_i)
# a, b = l[0], l[1]
# puts 'a == b' if a == b
# puts 'a < b' if a < b
# puts 'a > b' if a > b

# 2_B
# a, b, c = gets.split(' ').map(&:to_i)
# output = (a < b && b < c) ? 'Yes' : 'No'
# puts output

# 2_C
# ary = gets.split(' ').map(&:to_i)
# puts ary.sort_by{|a| a.to_i }.join(' ')

# 2_D
# def checkInRectangle(w, h, x, y, r)
#   return 'No' if x < 0 || y < 0 || x > w || y > h
#   return 'Yes' if x + r <= w && x - r >= 0 && y + r <= h && y - r >= 0
#   return 'No'
# end

# w, h, x, y, r = gets.split(' ').map(&:to_i)
# output = checkInRectangle(w, h, x, y, r)
# puts output

# 3_A
# str = 'Hello World'
# 1000.times do
#   puts str
# end

# 3_B
# input = readlines.map(&:to_i)
# input.each_with_index do |x, i|
#   break if x == 0
#   puts "Case #{i+1}: #{x}"
# end

# 3_C
# 複数行に複数要素
# input = readlines(chomp: true).map{|l| l.split(' ').map(&:to_i)}
# input.each do |ary|
#   break if ary[0] == 0 && ary[1] == 0
# ソートして結合して出力
#   puts ary.sort_by{|a| a.to_i }.join(' ')
# end
# 模範回答。時間は同じだがメモリはあまり使わない
# while true
#   x, y = gets.split.map(&:to_i)
#   break if x == 0 && y == 0
#   if x < y
#     puts "#{x} #{y}"
#   else
#     puts "#{y} #{x}"
#   end
# end

# 3_D
# a, b, c = gets.split.map(&:to_i)
# 案1.aからbまでを繰り返して計算する
# 案2.先に約数一覧を出してa未満,bより大きい数字を省く
# 良さそうだがメソッドがないので結局繰り返し処理を行うことになるため1を採用
# divisor_count = 0
# (a..b).each do |num|
#   divisor_count += 1 if c % num == 0
# end
# puts divisor_count

# 4_A
# a, b = gets.split(' ').map(&:to_i)
# puts "#{a.div(b)} #{a%b} #{format("%.5f", a.fdiv(b))}"

# 4_B
# r = gets.to_i
# pi = Math::PI
# puts "#{format("%.6f", r**2 * pi)} #{format("%.6f", 2 * r * pi)}"

# 4_C
# input = readlines(chomp: true)
# input= ['1 + 2', '0 ? 0']
# input.each do |l|
  # break if l.include?('?') #include?は繰り返し処理であるためmemoryを多く使う
  # break if l =~ /\?/
  # puts eval(l)
# end

# 4_D
# n = gets.to_i
# numbers = gets.split(' ').map(&:to_i)
# # result = <<~EOS
# # #{numbers.min} #{numbers.max} #{numbers.sum}
# # EOS
# # puts result
# puts "#{numbers.min} #{numbers.max} #{numbers.sum}" # 同じメモリ数

#5_A
