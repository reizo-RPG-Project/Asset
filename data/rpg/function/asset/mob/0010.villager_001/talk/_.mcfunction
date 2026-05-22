#> rpg:asset/mob/0010.villager_001/talk/_
#
# 
#
# @within function rpg:asset/mob/0007.abstract_npc/tick/talk/_

# 普通のテキスト
execute if score @s RPG.Mob.0010.Talk matches 1 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[2]",interpret:true},{"text":"Houdy!"}]
execute if score @s RPG.Mob.0010.Talk matches 2 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"...あれ?君はこっちの言語か。"}]
execute if score @s RPG.Mob.0010.Talk matches 3 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[1]",interpret:true},{"text":"んんっと。"}]
execute if score @s RPG.Mob.0010.Talk matches 5 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[2]",interpret:true},{"text":"ハロー！"}]
execute if score @s RPG.Mob.0010.Talk matches 6 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"僕はメル！ずっと前からこの島にいるんだ。"}]
execute if score @s RPG.Mob.0010.Talk matches 7 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"...久しぶりに人を見たよ"}]
execute if score @s RPG.Mob.0010.Talk matches 8 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[1]",interpret:true},{"text":"この島は...ある",color:"white"},{"text":"モンスター",color:"yellow"},{"text":"によって結界をはられたんだ。",color:"white"}]
execute if score @s RPG.Mob.0010.Talk matches 9 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[2]",interpret:true},{"text":"そのせいで、この島から出られないのさ"}]
execute if score @s RPG.Mob.0010.Talk matches 10 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"...え?泳げばいいって?"}]
execute if score @s RPG.Mob.0010.Talk matches 11 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"この結界はね、この島をぐるっと囲んで..."}]
execute if score @s RPG.Mob.0010.Talk matches 12 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"周りに無限の海を広げる",color:"white"},{"text":"領域",color:"aqua"},{"text":"を作ったんだ。",color:"white"}]
execute if score @s RPG.Mob.0010.Talk matches 13 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[1]",interpret:true},{"text":"あのモンスターを倒せば結界も消えるんだろうけど..."}]
execute if score @s RPG.Mob.0010.Talk matches 14 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"僕たちにゃ力が無いからね。"}]
execute if score @s RPG.Mob.0010.Talk matches 15 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"...それで、力を持ってそうな君に頼みたいんだけど。"}]
execute if score @s RPG.Mob.0010.Talk matches 16 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[1]",interpret:true},{"text":"あのモンスターの討伐を...さ。"}]
execute if score @s RPG.Mob.0010.Talk matches 17 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[2]",interpret:true},{"text":"もちろん！お礼はするよ！"}]
execute if score @s RPG.Mob.0010.Talk matches 18 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[1]",interpret:true},{"text":"多分...きっと...恐らく...ね",color:"gray"}]
execute if score @s RPG.Mob.0010.Talk matches 19 run return run tellraw @s [{"storage":"reizo_mcfunc_engin:context",nbt:"this.FaceData[2]",interpret:true},{"text":"それじゃ！頼んだよ！"}]
execute if score @s RPG.Mob.0010.Talk matches 20.. run return run tellraw @s "..."