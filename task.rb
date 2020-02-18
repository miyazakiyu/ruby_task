# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names << "齋藤"
  p names
end

def q2
  array1 = %w(dog cat fish)
  array2 = %w(bird bat tiger)

  # 以下に回答を記載
  array = array1 + array2
  p array
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  count = numbers.count(3)
  p count
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  p sports.compact!
  #compactだとnilを取り除いた配列を出力してくれるが元の配列自体が変更されない。
  #compact!(破壊的メソット)を使うことにより元の配列も変更する。

end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  p array1.empty?
  p array2.empty?
  #empty?メソッドは配列が空かどうかを調べる
  #空ならtrue,空でないならfalse
end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  numbers2 = numbers1.map { |i| i * 10}
  p numbers2
  #mapメソッドはブロックの値を集めた新しい配列を作るときに使うメソッド。
  #mapメソッド(別名　collectメソッド)
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  # p array.map!{|i| i.to_i}
  p array.map!(&:to_i)
  #map!メソッドは元の値も書き換える。(破壊的メソッド)
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)

  p programming_languages
  p upper_case_programming_languages
  # ・downcaseで大文字を小文字に変換
  # ・upcaseで小文字を大文字に変換
  # ・swapcaseで小文字⇔大文字の変換
  # ・capitalizeで先頭の小文字を大文字に変換
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |name,i|
    puts "会員No.#{i} #{name}さん"
  end

end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    if food.include?("うに")
      puts "好物です"
    else
      puts "まぁまぁ好物です"
    end
  end
  #include?メソッドは、メソッドに取った引数が配列に含まれている時にtrueを返す。
  #含まれていなければfalseを返す。配列の検索機能のようなもの。

end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  puts "ユーザーの趣味一覧"

  sports2 = sports.flatten.uniq

  sports2.each.with_index(1) do |sports,i|
    puts "No.#{i} #{sports}"
  end
  # flatten は自身を再帰的に平坦化した配列を生成して返す。
  # uniq は配列から重複した要素を取り除いた新しい配列を返す。

end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  p data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  p user_data.merge!(update_data)
  # mergeメソッドとは複数のハッシュを結合させるメソッド
  # 重複するキーがある場合は引数として渡された方のハッシュのキーで上書きされる。
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  p data.keys
end
# keysメソッドは、[ハッシュ]の全てのキーを配列に変換することができる。
# valuesメソッドだと、全ての値を配列に変換することができる。

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  # if data1.include?(:age)
  #   puts "OK"
  # else
  #   puts "NG"
  # end
  #
  # if data2.include?(:age)
  #   puts "OK"
  # else
  #   puts "NG"
  # end

  #三項演算子を使用
  #key?は特定のキーが存在するか調べるメソッド
  puts data1.key?(:age) ? "OK" : "NG"
  puts data2.key?(:age) ? "OK" : "NG"
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}です。"
  end
end

class UserQ17
  # 以下に回答を記載
  # def initialize(**user)
  #    @name = user[:name]
  #    @age = user[:age]
  #    @gender = user[:gender]
  #    @admin = user[:admin] ? "有り" : "無し"
  # end
  #
  # def info
  #   puts <<~TEXT
  #   名前: #{@name}
  #   年齢: #{@age}
  #   性別: #{@gender}
  #   管理者権限: #{@admin}
  #   TEXT
  # end

  def initialize(name:, age:, gender:, admin:)
    @name = name
    @age = age
    @gender = gender
    @admin = admin
  end

  def info
    admin = @admin ? "有り" : "無し"
    puts <<~TEXT
    名前: #{@name}
    年齢: #{@age}
    性別: #{@gender}
    管理者権限: #{admin}
    TEXT
  end

end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男", admin: true)
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男", admin: false)

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載

end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい

  def initialize(name)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載

end

class Zoo
  # 以下に回答を記載

end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end
