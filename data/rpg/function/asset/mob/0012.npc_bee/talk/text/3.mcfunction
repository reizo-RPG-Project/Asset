#> rpg:asset/mob/0012.npc_bee/talk/text/3
#
# 
#
# @within function rpg:asset/mob/0012.npc_bee/talk/_

# 3番
execute if score @s RPG.Mob.0012.Talk matches 1 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"ｻﾞｰ...ｻﾞｰ...ﾋﾟｰ..."]
execute if score @s RPG.Mob.0012.Talk matches 2 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"聞こえるかい?"]
execute if score @s RPG.Mob.0012.Talk matches 3 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"私は...何と言えばいいだろう。この世界の管理者とでも言おうか。"]
execute if score @s RPG.Mob.0012.Talk matches 4 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"今このハチという人物を介して話しているのだが...あまり時間がないので手短に話す。"]
execute if score @s RPG.Mob.0012.Talk matches 5 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"君はあのモンスターを倒してこの島の人たちを救う。"]
execute if score @s RPG.Mob.0012.Talk matches 6 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"そして、これからの旅でそのようなことは多く起こるだろう。"]
execute if score @s RPG.Mob.0012.Talk matches 7 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"君は伝説にある英雄だからな。当然の行動だ。"]
execute if score @s RPG.Mob.0012.Talk matches 8 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"だが...その行為がこの世界にどのような影響を与えるか。よく考えたほうがいいだろう。"]
execute if score @s RPG.Mob.0012.Talk matches 9 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"旅の終着点でまた会おう。"]
execute if score @s RPG.Mob.0012.Talk matches 10 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"ｻﾞｰ...ｻﾞｰ...ﾋﾟｰ..."]
execute if score @s RPG.Mob.0012.Talk matches 11..14 run return run tellraw @s "雑音しか聞こえない。"
execute if score @s RPG.Mob.0012.Talk matches 15 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"あれ...さっきまでのきおくが..."]
execute if score @s RPG.Mob.0012.Talk matches 16 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"ッハ...そんなかおして なにかあったのかい?"]
execute if score @s RPG.Mob.0012.Talk matches 17 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"...あんた、まだいるのかい?"]
execute if score @s RPG.Mob.0012.Talk matches 18 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"確か...このさき道なりでよろづ屋があるから そこにいってみたらどうだい?"]
execute if score @s RPG.Mob.0012.Talk matches 19.. run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},"きっとあんたなら かてるよ。しんぱいせずに すすみな！"]