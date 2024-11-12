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
# while true
#   h, w = gets.split.map(&:to_i)
#   break if h == 0 && w == 0
#   output = '#'
#   h.times do
#     puts output * w
#   end
#   puts ''
# end
# 繰り返し処理が多いことが気になるが、模範解答（下記）を見ても2重ループしているので許容
# while true
#   h, w = gets.split.map(&:to_i)
#   break if h == 0 && w == 0
#   h.times do
#     puts '#' * w
#   end
#   puts
# end

#5_B
# OUT = '#'
# IN = '.'
# while true
#   h, w = gets.split.map(&:to_i)
#   break if h == 0 && w == 0
#   h.times do |i|
#     case i + 1
#     when 1
#       puts OUT * w
#     when h
#       puts OUT * w
#     else
#       puts OUT + IN * (w - 2) + OUT
#     end
#   end
#   puts
# end

# 5_C
# while true
#   h, w = gets.split(' ').map(&:to_i)
#   break if h == 0 && w == 0
#   h.times do |i|
#     output_line = []
#     w.times do |j|
#       # i: 行、j: 列
#       # i+jが偶数なら#を、奇数なら.を出力
#       output_line << ((i + j).even? ? '#' : '.')
#     end
#     puts output_line.join
#   end
#   puts
# end

#5_D
# n = gets.to_i
# output = []
# n.times do |i|
#   i += 1
#   if i % 3 == 0 || i.to_s.include?('3')
#     output << i
#   end
# end
# puts " #{output.join(' ')}"

# 6_A
# n = gets.to_i
# numbers = gets.split(' ').map(&:to_i)
# output = []
# numbers.each do |n|
#   output.unshift(n)
# end
# puts output.join(' ')

# 6_B
# missing_cards = {絵柄1: [numbers], 絵柄1: [numbers], ...}
n = gets.to_i
has_cards = {}

# 持っているカードを記録
n.times do
  suit, rank = gets.chomp.split
  suit = suit.to_sym
  has_cards[suit] ||= []
  has_cards[suit] << rank.to_i
end

# 全カードの定義
ranks = (1..13).to_a
all_cards = { S: ranks.dup, H: ranks.dup, C: ranks.dup, D: ranks.dup }

# 不足しているカードを見つける
missing_cards = {}
all_cards.each do |suit, ranks|
  # 持っているカードがない場合は全ての数字が不足
  if !has_cards[suit]
    missing_cards[suit] = ranks
    next
  end
  
  # 持っているカードと比較して不足している数字を見つける
  missing_cards[suit] = ranks - has_cards[suit]
end

# 結果を指定された順序で出力
[:S, :H, :C, :D].each do |suit|
  if missing_cards[suit]
    missing_cards[suit].sort.each do |rank|
      puts "#{suit} #{rank}"
    end
  end
end

# 配列とする場合
n = gets.to_i
existing_cards = []
n.times do
  suit, rank = gets.chomp.split
  existing_cards << [suit, rank.to_i]
end
all_cards = []
suits = ['S', 'H', 'C', 'D']
ranks = (1..13).to_a
suits.each do |suit|
  ranks.each do |rank|
    all_cards << [suit, rank]
  end
end
missing_cards = all_cards - existing_cards
missing_cards.each do |suit, rank|
  puts "#{suit} #{rank}"
end

# 6_D