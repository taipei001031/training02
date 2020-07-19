# じゃんけんをして、勝ち負けを判定させましょう。（相手の出す手は乱数で決めましょう）
#  以下は出力例です。
#  -----------------
#  最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 0
# あなたの手:グー、相手の手:チョキ
# あなたの勝ちです
# -----------------
# 以下は例外を入力した時の出力例です。
# -----------------
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 3
# 入力された値が無効です
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# ...

def janken 

  puts "[0]:グー\n[1]:チョキ\n[2]:パー"

  myhand = gets.to_i
  comhand = rand(0..2)
  jankens = ["グー","チョキ","パー"]
  
  if myhand < 0 || myhand > 2
    puts "入力された値が無効です"
    return true
  end
  
  puts "あなたの手:#{jankens[myhand]}、相手の手:#{jankens[comhand]}"

  if myhand==0&&comhand==1 || myhand==1&&comhand==2 ||myhand==2&&comhand==0 
    puts "あなたの勝ちです"
    return false
  elsif myhand==comhand
    puts "あいこで..."
    return true
  else
    puts "あなたの負けです"
    return false
  end

end



next_game = true
puts "-----------------"
puts "最初はグー、じゃんけん..."

while next_game do
  next_game = janken
end