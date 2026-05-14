#> rpg:asset/mob/0009.tubo_bito/talk/_
#
# 
#
# @within function rpg:asset/mob/0007.abstract_npc/tick/talk/_

# 普通のテキスト
execute if score @s RPG.Mob.0009.Talk matches 1 run return run tellraw @s "<\uE008壺人> いらっしゃいませ！勇者様！"
execute if score @s RPG.Mob.0009.Talk matches 2 run return run tellraw @s "<\uE008壺人> 私に模様付きの壺を下されば、きっと役に立つアイテムを上げますよ！"

# 間に...
execute if score @s RPG.Mob.0009.Talk matches 3..49 run return run tellraw @s "..."

# 裏テキスト(なんでこっちのほうが多いんだ？)
execute if score @s RPG.Mob.0009.Talk matches 50 run return run tellraw @s "<\uE008壺人> ふふ..."
execute if score @s RPG.Mob.0009.Talk matches 51 run return run tellraw @s "<\uE008壺人> こんなに話しかけてくるなんて、なかなか変わったお方ですね？"
execute if score @s RPG.Mob.0009.Talk matches 52 run return run tellraw @s "<\uE008壺人> では一つ面白いことを言って見せましょう。"
execute if score @s RPG.Mob.0009.Talk matches 53 run return run tellraw @s "<\uE008壺人> 勇者様、私の顔は壺で隠れています。"
execute if score @s RPG.Mob.0009.Talk matches 54 run return run tellraw @s "<\uE008壺人> この顔の下が一体どうなっているのか...気になります？"
execute if score @s RPG.Mob.0009.Talk matches 55 run return run tellraw @s "<\uE008壺人> ふふふ..."
execute if score @s RPG.Mob.0009.Talk matches 56 run return run tellraw @s "<\uE008壺人> 壺の中身は、見ないほうが夢がありますよ？"
execute if score @s RPG.Mob.0009.Talk matches 57 run return run tellraw @s "<\uE008壺人> どうです？「ツボ」ったでしょう？"
execute if score @s RPG.Mob.0009.Talk matches 58 run return run tellraw @s "<\uE008壺人> 私たちのギャグは「ツボ」るものだらけですからね！今のは鉄板ギャグです。"
execute if score @s RPG.Mob.0009.Talk matches 59 run return run tellraw @a "(これ以上変化はないようだ...)"
execute if score @s RPG.Mob.0009.Talk matches 60..61 run return run function rpg:asset/mob/0009.tubo_bito/talk/end