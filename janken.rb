def janken 
  
  jankens=["グー","チョキ","パー"]
  puts "じゃんけんぽん"
  puts "[0]グー[1]チョキ[2]パー[3]終了"
  puts "------------------------------"
  
  player_hand=gets.to_i
  program_hand=rand(3)
  
  if player_hand > 2
    puts "じゃんけんを終了します"
    puts "------------------------------"
    return false
  end
  
  puts "あなたは#{jankens[player_hand]}を出しました。"
  puts "相手は#{jankens[program_hand]}を出しました。"
  puts "------------------------------"
  
  
  if player_hand == program_hand
    puts "あいこ"
    puts "------------------------------"
    return true
    
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "じゃんけんに勝ちました。"
    puts "------------------------------"
    $result = "win"
    acchimuite_hoi
    
  else
    puts "じゃんけんに負けました。"
    puts "------------------------------"
    $result = "lose"
    acchimuite_hoi
  end
end



def acchimuite_hoi
  acchimuite_hois=["上","下","左","右"]
  puts "あっちむいてほい"
  puts "[0]上[1]下[2]左[3]右"
  puts "------------------------------"
  
  player_acchimuite_hoi=gets.to_i
  program_acchimuite_hoi=rand(4)
  
  puts "あなたは#{acchimuite_hois[player_acchimuite_hoi]}を出しました。"
  puts "相手は#{acchimuite_hois[program_acchimuite_hoi]}を出しました。"
  puts "------------------------------"
  
  if (player_acchimuite_hoi == program_acchimuite_hoi) && ($result=="win")
    puts "あなたの勝ち！"
    puts "------------------------------"
    
    
  elsif (player_acchimuite_hoi == program_acchimuite_hoi) && ($result=="lose")
    puts "あなたの負け。"
    puts "------------------------------"
    
    
  else
    puts "もう一回！"
    return true
    
    
  end
  
  
end

next_game = true

while next_game
  next_game = janken
  
  
end