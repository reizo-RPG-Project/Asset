#> rpg:asset/mob/0013.npc_bees/talk/_
#
# 
#
# @within function rpg:asset/mob/0013.npc_bee/init/_

# 普通のテキスト
execute if score @s RPG.Mob.0013.Talk matches 1 run return run tellraw @s "<\uE009ハチ飼いのビース> やっほー！"
execute if score @s RPG.Mob.0013.Talk matches 2 run return run tellraw @s "<\uE009ハチ飼いのビース> 僕はビース！趣味はハチを飼うこと！"
execute if score @s RPG.Mob.0013.Talk matches 3 run return run tellraw @s "<\uE009ハチ飼いのビース> さっきお兄さん達の会話聞いてたんだけどさ..."
execute if score @s RPG.Mob.0013.Talk matches 4 run return run tellraw @s [{"text":"<\uE009ハチ飼いのビース> この島にいる...あの",color:"white"},{"text":"モンスター",color:"yellow"},{"text":"をたおしてくれるんでしょ?"}]
execute if score @s RPG.Mob.0013.Talk matches 5 run return run tellraw @s "<\uE009ハチ飼いのビース> ホント!?やっぱりお兄さんは僕たちのヒーローだよ！"
execute if score @s RPG.Mob.0013.Talk matches 6 run return run tellraw @s "<\uE009ハチ飼いのビース> それでね...僕も正義の味方の力になりたくて..."
execute if score @s RPG.Mob.0013.Talk matches 7 run return run tellraw @s "<\uE009ハチ飼いのビース> 僕が長い間かけて集めてきた大事なものだけど..."
execute if score @s RPG.Mob.0013.Talk matches 8 run return run tellraw @s "<\uE009ハチ飼いのビース> きっとお兄さんの役に立つものだと思うからあげるね！"
execute if score @s RPG.Mob.0013.Talk matches 9 run return run function rpg:asset/mob/0013.npc_bees/talk/give_honeycomb/_
execute if score @s RPG.Mob.0013.Talk matches 10.. run return run tellraw @s "<\uE009ハチ飼いのビース> それじゃ！頑張ってね！"