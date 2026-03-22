#> rpg/asset/mob/0002.abstract_enemy/init
#
# MobのInit処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/run.m

# タグをつける
    tag @s add RPG.Mob.0002.Enemy

# ステータスセット
    execute store result score @s RPG.HP run data get storage reizo_mcfunc_engin:mob Field.HP
    execute store result score @s RPG.STR run data get storage reizo_mcfunc_engin:mob Field.STR
    execute store result score @s RPG.DEF run data get storage reizo_mcfunc_engin:mob Field.DEF

# 自然的な要因で死なないように
    effect give @s regeneration infinite 255 true
    effect give @s[type=#undead] instant_damage infinite 0 true

# 本気モード
execute if data storage reizo_mcfunc_engin:mob Field{Seriously:1b} run function rpg:asset/mob/0002.abstract_enemy/init/seriously

# # IDの割り当て
#     # グローバルインデックス追加
#         scoreboard players add $Core RPG.Mob.0002.ID 1
#         scoreboard players operation $Core RPG.Mob.0002.ID %= #32768 RPG.Const
#         execute if score $Core RPG.Mob.0002.ID matches 0 run scoreboard players add $Core RPG.Mob.0002.ID 1
#     # 直接IDとしてぶち込む
#     scoreboard players operation @s RPG.Mob.0002.ID = $Core RPG.Mob.0002.ID
#     # 一時的にコピー
#     scoreboard players operation $Temp RPG.Mob.0002.ID = $Core RPG.Mob.0002.ID
#     # 2^16をかけることで32768以上ならオーバーフロー
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #65536 RPG.Const
#     # オーバーフローしてたらデータセット、これを繰り返す
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID0.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID0.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID1.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID1.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID2.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID2.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID3.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID3.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID4.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID4.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID5.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID5.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID6.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID6.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID7.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID7.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID8.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID8.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID9.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID9.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID10.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID10.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID11.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID11.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID12.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID12.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID13.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID13.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID14.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID14.1
#     scoreboard players operation $Temp RPG.Mob.0002.ID *= #2 RPG.Const
#     execute if score $Temp RPG.Mob.0002.ID matches 00.. run tag @s add RPG.Mob.0002.ID15.0
#     execute if score $Temp RPG.Mob.0002.ID matches ..-1 run tag @s add RPG.Mob.0002.ID15.1
#     # お掃除
#     scoreboard players reset $Temp RPG.Mob.0002.ID