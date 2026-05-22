#> rpg:asset/mob/0012.npc_bee/talk/text/2
#
# 
#
# @within function rpg:asset/mob/0012.npc_bee/talk/_

# 2番
execute if score @s RPG.Mob.0012.Talk matches 1 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"...こんにちわ。"]
execute if score @s RPG.Mob.0012.Talk matches 2 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"えぇっと...なにからはなせばいいかしら..."]
execute if score @s RPG.Mob.0012.Talk matches 3 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"えっと...わたし、ハチっていいます。"]
execute if score @s RPG.Mob.0012.Talk matches 4 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"きっと、あなたのたたかいもうまくいくとおもいます..."]
execute if score @s RPG.Mob.0012.Talk matches 5 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"わたしたちは ながいことここにとじこめられていますから"]
execute if score @s RPG.Mob.0012.Talk matches 6 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"そとのせかいをひとめでもみたかったんです。"]
execute if score @s RPG.Mob.0012.Talk matches 7 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"その...だから..."]
execute if score @s RPG.Mob.0012.Talk matches 8 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"あなたがあのモンスターを倒してくれるって言ってくれてて本当に嬉しくて..."]
execute if score @s RPG.Mob.0012.Talk matches 9 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"その...ありがとうございます...！"]
execute if score @s RPG.Mob.0012.Talk matches 10.. run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"たたかい...がんばってください！"]
execute if score @s RPG.Mob.0012.Talk matches 15 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"(...まだいる)"]
execute if score @s RPG.Mob.0012.Talk matches 16 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"えぇっと... このさきによろづ屋があるので... そこにいってみたらいいのではないでしょうか..."]
execute if score @s RPG.Mob.0012.Talk matches 17.. run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"(あそこの てんしゅ ちょっとこわいからニガテなんだよなー...)"]