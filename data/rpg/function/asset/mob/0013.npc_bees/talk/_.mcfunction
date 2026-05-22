#> rpg:asset/mob/0013.npc_bees/talk/_
#
# 
#
# @within function rpg:asset/mob/0013.npc_bee/init/_

# 普通のテキスト
execute if score @s RPG.Mob.0013.Talk matches 1 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"やっほー！"]
execute if score @s RPG.Mob.0013.Talk matches 2 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"僕はビース！趣味はハチを飼うこと！"]
execute if score @s RPG.Mob.0013.Talk matches 3 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"さっきお兄さん達の会話聞いてたんだけどさ..."]
execute if score @s RPG.Mob.0013.Talk matches 4 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"この島にいる...あの",color:"white"},{"text":"モンスター",color:"yellow"},{"text":"をたおしてくれるんでしょ?"}]
execute if score @s RPG.Mob.0013.Talk matches 5 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"ホント!?やっぱりお兄さんは僕たちのヒーローだよ！"]
execute if score @s RPG.Mob.0013.Talk matches 6 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"それでね...僕も正義の味方の力になりたくて..."]
execute if score @s RPG.Mob.0013.Talk matches 7 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"僕が長い間かけて集めてきた大事なものだけど..."]
execute if score @s RPG.Mob.0013.Talk matches 8 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"きっとお兄さんの役に立つものだと思うからあげるね！"]
execute if score @s RPG.Mob.0013.Talk matches 9 run return run function rpg:asset/mob/0013.npc_bees/talk/give_honeycomb/_
execute if score @s RPG.Mob.0013.Talk matches 10.. run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"それじゃ！頑張ってね！"]