# 文字列
puts '1'.to_s

# 数値
puts 1.to_s

# nil
puts nil.to_s

# true
puts true.to_s

# false
puts false.to_s

# 正規表現
puts /\d+/.to_s


i = 10
puts "#{i}は16進数にすると#{i.to_s(16)}です"

n = 11
if n > 10
  puts '10より大きい'
else
  puts '10以下'
end

country = 'italy'
if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
else
  puts '???'
end

country = 'italy'

# if文の戻り値を変数に代入する
greeting =
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'Hello'
  elsif country == 'italy'
    'ciao'
  else
    '???'
  end
greeting

point = 7
day = 1
# 1日であればポイント5倍
if day == 1
  point *= 5
end

puts point

# 上記コードのifを修飾子として使う
point = 7
day = 1
# 1日であればポイント5倍（if修飾子を利用）
point *= 5 if day == 1

puts point

# ifとelsifの後ろにthenを入れることで条件式とその条件が真だった場合の処理を1行で記述できる
country = 'italy'
if country == 'japan' then 'こんにちは'
elsif country == 'us' then 'Hello'
elsif country == 'italy' then 'ciao'
else '???'
end


# 2.6メソッドの定義

# メソッドの戻り値
def greeting(country)
  # "こんにちは"または"hello"がメソッドの戻り値となる
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting('japan')
puts greeting('us')

# returnを使ってメソッドを途中で脱出
def greeting(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  # (nil?はオブジェクトがnilの場合にtrueを返すメソッド)
  return 'countryを入力してください' if country.nil?
  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end

puts greeting(nil)
puts greeting('us')