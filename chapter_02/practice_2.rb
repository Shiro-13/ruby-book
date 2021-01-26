# 2.8.2 %記法で文字列を作る------------------------------
# %q! !はシングルクオートで囲むのと同義
puts %q!He said, "Don't speak."!

# %Q! !はダブルコーテションで囲むのと同義（改行文字や式展開が使える）
something = "Hello."
puts %Q!He said, "#{something}"!

# %! !もダブルコーテーションと同義
something = "Bye."
puts %!He said, "#{something}!

# 2.8.3 ヒアドキュメント------------------------------
# 文字列の途中改行
# 識別子は自由につけられるが、記述する文字列に含まれない文字列を使用する
a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT
puts a

# ヒアドキュメントを直接引数として渡す(prependは渡された文字列を先頭に追加するメソッド)
a = 'Ruby'
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a

# ヒアドキュメントで作成した文字列に対して、直接upcaseメソッドを呼び出す
# (upcaseは文字列をすべて大文字にするメソッド)
b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b

# 2.10.1 &&や||の戻り値と評価を終了するタイミング------------------------------
# Alice,Bob,Carolと順に検索し、最初に見つかったユーザー(nilまたはfalse以外の値)を変数に格納
user = find_user('Alice') || find_user('Bob') || find_user('Carol')

# 正常なユーザーであればメールを送信する(左辺が偽であればメール送信は実行されない)
user.valid? && send_mail_to(user)

# 2.10.2 優先順にが低いand,or,not------------------------------
# 制御フロー
def greeding(country)
  # countryがnil(またはfalse)ならメッセージを返してメソッドを抜ける
  country or return 'countryを入力してください。'

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

puts greeding(nil)
puts greeding('japan')


