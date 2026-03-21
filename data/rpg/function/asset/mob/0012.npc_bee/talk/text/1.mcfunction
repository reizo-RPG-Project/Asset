#> rpg:asset/mob/0012.npc_bee/talk/text/1
#
# 
#
# @within function rpg:asset/mob/0012.npc_bee/talk/_

# 1番
execute if score @s RPG.Mob.0012.Talk matches 1 run return run tellraw @s "<ハチ> ハチにはなしかけるんて...あんた かわってるねぇ..."
execute if score @s RPG.Mob.0012.Talk matches 2 run return run tellraw @s "<ハチ> ッハッハッハ...ハチがしゃべるほうがかわってるって?そりゃそうだ。"
execute if score @s RPG.Mob.0012.Talk matches 3 run return run tellraw @s "<ハチ> そんで...あんた そうとうなおひとよしなんだねぇ"
execute if score @s RPG.Mob.0012.Talk matches 4 run return run tellraw @s "<ハチ> だって いきなりしらないひとからこえをかけられて..."
execute if score @s RPG.Mob.0012.Talk matches 5 run return run tellraw @s "<ハチ> 「あのモンスターを倒してほしいんです！助けて！」"
execute if score @s RPG.Mob.0012.Talk matches 6 run return run tellraw @s "<ハチ> なぁんていわれたら、ふつうはことわるだろう?"
execute if score @s RPG.Mob.0012.Talk matches 7 run return run tellraw @s "<ハチ> まぁ...ごういんに やらされたのか みずからやったのかはわからないけど..."
execute if score @s RPG.Mob.0012.Talk matches 8 run return run tellraw @s "<ハチ> ほこれることだとあたしゃあ おもうよ。"
execute if score @s RPG.Mob.0012.Talk matches 9 run return run tellraw @s "<ハチ> ほら、あのモンスターをたおすんだろう?"
execute if score @s RPG.Mob.0012.Talk matches 10..14 run return run tellraw @s "<ハチ> こんなところでグズグズしてないで、さっさとさきにすすみな。"
execute if score @s RPG.Mob.0012.Talk matches 15 run return run tellraw @s "<ハチ> ...あんた、まだいるのかい?"
execute if score @s RPG.Mob.0012.Talk matches 16 run return run tellraw @s "<ハチ> 確か...このさき道なりでよろづ屋があるから そこにいってみたらどうだい?"
execute if score @s RPG.Mob.0012.Talk matches 17.. run return run tellraw @s "<ハチ> きっとあんたなら かてるよ。しんぱいせずに すすみな！"