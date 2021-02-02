# 4.2.1 要素の変更、追加、削除------------------------------
# 配列[添え字] = [新しい値]
# ２番めの要素を20に変更
a = [1, 2, 3]
a[1] = 20
a #=> [1, 20, 3]

# もとの大きさよりも大きな添え字を指定した場合、間の値がnilで埋められる
# 大きさが3の配列に対して5番目の要素を設定
a = [1, 2, 3]
a[4] = 50
a #=> [1, 2, 3, nil, 50]

# <<で配列の最後に要素を追加
a = []
a << 1
a << 2
a << 3
a #=> [1, 2, 3]

# delete_atメソッド 配列内の特定の位置にある要素を削除
a = [1, 2, 3]
# 2番目の要素を削除（削除した値が戻り値となる）
a.delete_at(1) #=> 2
a #=> [1, 3]


# 4.3.2 Rubyの繰り返し処理------------------------------
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
sum #=> 10

# 4.4.1 map/collect------------------------------
# map(各要素に対してブロックを評価した結果を新しい配列にして返す(エイリアスメソッド：collect))
# 配列の各要素を10倍した新しい配列を作る
numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map { |n| n * 10 }
new_numbers #=> [10, 20, 30, 40, 50]

# 4.4.2 select/find_all/reject------------------------------
# select(各要素に対してブロックを評価し、その戻り値が真の要素を集めた配列を返す(エイリアスメソッド：find_all))
# 偶数だけを集めた配列を新たに作る
numbers = [1, 2, 3, 4, 5, 6]
# ブロックの戻り値が真になった要素のみ集められる
even_numbers = numbers.select { |n| n.even? }
even_numbers #=> [2, 4, 6]

# reject(selectの反対)
numbers = [1, 2, 3, 4, 5, 6]
# 3の倍数を除外する
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
non_multiples_of_three #=> [1, 2, 4, 5]

# 4.4.3 find/detect------------------------------
# find(ブロックの戻り値が真になった最初の要素を返す(エイリアスメソッド：detect))
numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find { |n| n.even? }
even_number #=> 2

# 4.4.4 inject/reduce------------------------------
# inject(たたみ込み演算(エイリアスメソッド：reduce))
numbers = [1, 2, 3, 4]
sum = numbers,inject(0) { |result, n| result + n }
sum #=> 10
# 1回目：result=0, n=1で、0+1=1。これが次のresultに入る。
# 2回目：result=1, n=2で、1+2=3。この結果が次のresultに入る。
# 3回目：result=3, n=3で、3+3=6。この結果が次のresultに入る。
# 4回目：result=6, n=4で、6+4=10。最後の要素に達したため、これがrejectメソッドの返り値になる。


