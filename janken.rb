require "csv"
 
puts "じゃんけん..."
 
def janken
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"
 
 player_hand = gets.chomp.to_i
 opponent_hand = rand(3)
 $case_pattern = ""
 hand = ["グー", "チョキ","パー"]
 
 if player_hand == 0 || player_hand == 1 || player_hand == 2
   puts "ホイ！"
   puts "-------------------"
 
   puts "あなた：" + "#{hand[player_hand]}" + "を出しました"
   puts "相手：" + "#{hand[opponent_hand]}" + "を出しました"
  
   puts "-------------------"
  
 elsif player_hand == 3
   puts "勝負を棄権しました。対戦を終了します。"
   exit

 else 
   puts "0~3の数字を入力してください"
   puts "じゃんけん..."
   
   janken
   
 end

 number_hand = player_hand - opponent_hand

 case number_hand 
   when 0 then
     puts "あいこで..."
    
     janken
  
   when -1,2 then
     $case_pattern = "win"
    
     acchimuitehoi
    
   when 1,-2 then 
     $case_pattern = "lose"
    
     acchimuitehoi
    
 end
end

def acchimuitehoi
 puts "あっちむいて～"
 puts "0(上)1(下)2(左)3(右)"
 
 player_direction = gets.chomp.to_i
 opponent_direction = rand(4)
 direction = ["上","下","左","右"]
 
 if player_direction == 0 || player_direction == 1 || player_direction == 2 || player_direction == 3
   puts "ホイ！"
   puts "-------------------"
   
   puts "あなた：" + "#{direction[player_direction]}" 
   puts "相手：" + "#{direction[opponent_direction]}" 
   
   puts "-------------------"
   
 else 
   puts "0~3の数字を入力してください"
   
   acchimuitehoi
   
 end
 
 number_direction = player_direction - opponent_direction
 
 if number_direction == 0 && ($case_pattern == "win")
   puts "あなたの勝ちです！"
   puts "-------------------"
   
   exit
   
 elsif number_direction == 0 && ($case_pattern == "lose")
   puts "あなたの負けです..."
   puts "-------------------"
   
   exit

 else 
   puts "じゃんけん..."
   
   janken
   
 end
end

janken