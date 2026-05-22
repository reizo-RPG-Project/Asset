#> rpg:asset/mob/0009.tubo_bito/talk/_
#
# 
#
# @within function rpg:asset/mob/0007.abstract_npc/tick/talk/_

# 普通のテキスト
execute if score @s RPG.Mob.0009.Talk matches 1 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"いらっしゃいませ！勇者様！"}]
execute if score @s RPG.Mob.0009.Talk matches 2 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"私に模様付きの壺を下されば、きっと役に立つアイテムを上げますよ！"}]

# 間に...
execute if score @s RPG.Mob.0009.Talk matches 3..49 run return run tellraw @s "..."

# 裏テキスト(なんでこっちのほうが多いんだ？)
execute if score @s RPG.Mob.0009.Talk matches 50 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[3]",interpret:true},{"text":"ふふ..."}]
execute if score @s RPG.Mob.0009.Talk matches 51 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"黙っているのにこんなに話しかけてくるなんて、なかなか変わった方ですね?"}]
execute if score @s RPG.Mob.0009.Talk matches 52 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"では一つ面白いことを言って見せましょう。"}]
execute if score @s RPG.Mob.0009.Talk matches 53 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"勇者様、私の顔は壺で隠れています。"}]
execute if score @s RPG.Mob.0009.Talk matches 54 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[2]",interpret:true},{"text":"この下は...一体どうなっていると思います?"}]
execute if score @s RPG.Mob.0009.Talk matches 55 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[3]",interpret:true},{"text":"ふふふ..."}]
execute if score @s RPG.Mob.0009.Talk matches 56 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"(何か気の利いたギャグを入れて～！)"}]
execute if score @s RPG.Mob.0009.Talk matches 57 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[2]",interpret:true},{"text":"どうです?面白いでしょう?「ツボ」ったでしょう?"}]
execute if score @s RPG.Mob.0009.Talk matches 58 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"私のギャグは「ツボ」る物ばっかりですからね、今のは私の鉄板ギャグです。"}]
execute if score @s RPG.Mob.0009.Talk matches 59 run return run tellraw @a "(これ以上変化はないようだ...)"
execute if score @s RPG.Mob.0009.Talk matches 60..61 run return run function rpg:asset/mob/0009.tubo_bito/talk/end