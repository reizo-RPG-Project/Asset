#> rpg:asset/mob/0009.tubo_bito/talk/_
#
# 
#
# @within function rpg:asset/mob/0007.abstract_npc/tick/talk/_

# 普通のテキスト
execute if score @s RPG.Mob.0009.Talk matches 1 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"こんにちは！勇者様！"}]
execute if score @s RPG.Mob.0009.Talk matches 2 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"私たちを救ってくださるなんて...なんてお優しい方なのでしょう。"}]
execute if score @s RPG.Mob.0009.Talk matches 3 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"それで...私もあなたの力になりたいのです。"}]
execute if score @s RPG.Mob.0009.Talk matches 4 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"実は私も過去にそのモンスターを倒そうとしたことがありまして。"}]
execute if score @s RPG.Mob.0009.Talk matches 5 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"...でも、圧倒的な強さだった。"}]
execute if score @s RPG.Mob.0009.Talk matches 6 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"私の力の大部分も失われ、もうダンジョンに行くことも出来ないのです。"}]
execute if score @s RPG.Mob.0009.Talk matches 7 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"でも...あなたに何か情報を伝えることは出来る。"}]
execute if score @s RPG.Mob.0009.Talk matches 8 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"だから...この",color:"white"},{"text":"ダンジョンのカギ",color:"aqua"},{"text":"と",color:"white"},{"text":"貝殻",color:"yellow"},{"text":"を渡しておきます。"}]
execute if score @s RPG.Mob.0009.Talk matches 9 run return run function rpg:asset/mob/0009.tubo_bito/talk/give_shell/_
execute if score @s RPG.Mob.0009.Talk matches 10 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"この貝殻を使えば私と離れていても話が出来る。"}]
execute if score @s RPG.Mob.0009.Talk matches 11 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"私もこの貝殻から何かしら知識が出せれば..."}]
execute if score @s RPG.Mob.0009.Talk matches 12 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"きっとあなたの役に立てる。"}]
execute if score @s RPG.Mob.0009.Talk matches 13 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"...今まで何度もあのモンスターを倒そうとした人はいました。"}]
execute if score @s RPG.Mob.0009.Talk matches 14 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"でも...みなやられてしまった。"}]
execute if score @s RPG.Mob.0009.Talk matches 15 run return run tellraw @s [{storage:"reizo_mcfunc_engin:context",nbt:"this.FaceData[0]",interpret:true},{"text":"どうか...お気を付けて..."}]

# 間に...
execute if score @s RPG.Mob.0009.Talk matches 16..49 run return run tellraw @s "..."

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