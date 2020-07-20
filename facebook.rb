# 「FaceBook」
# 以下の条件に従って、1から100までの数字を出力しましょう。
# - 条件
#  - 値が3で割り切れるときは'face'と出力する。
#  - 値が5で割り切れるときは'book'と出力する。
#  - 値が15で割り切れるときは'facebook'と出力する。
#  - それ以外の場合、値をそのまま出力する。
def facebook(a)
  if a%15==0
    return "facebook"
  elsif  a%3==0
    return "face"
  elsif  a%5==0
    return "book"  
  else
    return a
  end
end

for i in 1..100 do
  puts facebook(i)
end
