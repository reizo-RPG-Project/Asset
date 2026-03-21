#> rpg:asset/mob/0012.npc_bee/talk/text/2
#
# 
#
# @within function rpg:asset/mob/0012.npc_bee/talk/_

# 2番
execute if score @s RPG.Mob.0012.Talk matches 1 run return run tellraw @s "<ハチ> ...こんにちわ。"
execute if score @s RPG.Mob.0012.Talk matches 2 run return run tellraw @s "<ハチ> えぇっと...なにからはなせばいいかしら..."
execute if score @s RPG.Mob.0012.Talk matches 3 run return run tellraw @s "<ハチ> えっと...わたし、ハチっていいます。"
execute if score @s RPG.Mob.0012.Talk matches 4 run return run tellraw @s "<ハチ> きっと、あなたのたたかいもうまくいくとおもいます..."
execute if score @s RPG.Mob.0012.Talk matches 5 run return run tellraw @s "<ハチ> わたしたちは ながいことここにとじこめられていますから"
execute if score @s RPG.Mob.0012.Talk matches 6 run return run tellraw @s "<ハチ> そとのせかいをひとめでもみたかったんです。"
execute if score @s RPG.Mob.0012.Talk matches 7 run return run tellraw @s "<ハチ> その...だから..."
execute if score @s RPG.Mob.0012.Talk matches 8 run return run tellraw @s "<ハチ> あなたがあのモンスターを倒してくれるって言ってくれてて本当に嬉しくて..."
execute if score @s RPG.Mob.0012.Talk matches 9 run return run tellraw @s "<ハチ> その...ありがとうございます...！"
execute if score @s RPG.Mob.0012.Talk matches 10.. run return run tellraw @s "<ハチ> たたかい...がんばってください！"
execute if score @s RPG.Mob.0012.Talk matches 15 run return run tellraw @s "<ハチ> (...まだいる)"
execute if score @s RPG.Mob.0012.Talk matches 16 run return run tellraw @s "<ハチ> えぇっと... このさきによろづ屋があるので... そこにいってみたらいいのではないでしょうか..."
execute if score @s RPG.Mob.0012.Talk matches 17.. run return run tellraw @s "<ハチ> (あそこの てんしゅ ちょっとこわいからニガテなんだよなー...)"