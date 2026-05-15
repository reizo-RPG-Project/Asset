#> rpg:asset/mob/0012.npc_bee/talk/text/0
#
# 
#
# @within function rpg:asset/mob/0012.npc_bee/talk/_

# 0番
execute if score @s RPG.Mob.0012.Talk matches 1 run return run tellraw @s "<\uE010ハチ> ..."
execute if score @s RPG.Mob.0012.Talk matches 2 run return run tellraw @s "<\uE010ハチ> あんた、ハチに 2かいもはなしかけるなんて だいぶかわってるな。"
execute if score @s RPG.Mob.0012.Talk matches 3 run return run tellraw @s "<\uE010ハチ> なんではなせるんだって おもってんだろ?"
execute if score @s RPG.Mob.0012.Talk matches 4 run return run tellraw @s "<\uE010ハチ> へへへ..."
execute if score @s RPG.Mob.0012.Talk matches 5 run return run tellraw @s "<\uE010ハチ> おいらをほかの ハチと一緒にしちゃぁいけねぇぜ?"
execute if score @s RPG.Mob.0012.Talk matches 6 run return run tellraw @s "<\uE010ハチ> なんていったっておいらは..."
execute if score @s RPG.Mob.0012.Talk matches 7 run return run tellraw @s "<\uE010ハチ> 九九の八の段が出来るからな。"
execute if score @s RPG.Mob.0012.Talk matches 8 run return run tellraw @s "<\uE010ハチ> どうだ?おもしろいだろ?"
execute if score @s RPG.Mob.0012.Talk matches 9 run return run tellraw @s "<\uE010ハチ> ...いまのわらうところだぜ?"
execute if score @s RPG.Mob.0012.Talk matches 10..14 run return run tellraw @s "<\uE010ハチ> ほら、おもしろくないならさっさと ちったちった。"
execute if score @s RPG.Mob.0012.Talk matches 15 run return run tellraw @s "<\uE010ハチ> ...あんた、まだいるのか?"
execute if score @s RPG.Mob.0012.Talk matches 16 run return run tellraw @s "<\uE010ハチ> ほら このさきによろづ屋があるからさ そこにってみろよ。"
execute if score @s RPG.Mob.0012.Talk matches 17.. run return run tellraw @s "<\uE010ハチ> はやくいってきな、みんながあんたをまってんだ。"