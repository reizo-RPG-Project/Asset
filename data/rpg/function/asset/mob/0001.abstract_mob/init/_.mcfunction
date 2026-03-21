#> rpg/asset/mob/0001.abstract_mob/init
#
# MobのInit処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/run.m

# IDの割り当て
    # グローバルインデックス追加
        scoreboard players add $Core RPG.Mob.0001.ID 1
        scoreboard players operation $Core RPG.Mob.0001.ID %= #32768 RPG.Const
        execute if score $Core RPG.Mob.0001.ID matches 0 run scoreboard players add $Core RPG.Mob.0001.ID 1
    # 直接IDとしてぶち込む
    scoreboard players operation @s RPG.Mob.0001.ID = $Core RPG.Mob.0001.ID
    # 一時的にコピー
    scoreboard players operation $Temp RPG.Mob.0001.ID = $Core RPG.Mob.0001.ID
    # 2^16をかけることで32768以上ならオーバーフロー
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #65536 RPG.Const
    # オーバーフローしてたらデータセット、これを繰り返す
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID0.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID0.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID1.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID1.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID2.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID2.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID3.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID3.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID4.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID4.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID5.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID5.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID6.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID6.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID7.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID7.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID8.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID8.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID9.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID9.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID10.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID10.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID11.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID11.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID12.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID12.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID13.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID13.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID14.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID14.1
    scoreboard players operation $Temp RPG.Mob.0001.ID *= #2 RPG.Const
    execute if score $Temp RPG.Mob.0001.ID matches 00.. run tag @s add RPG.Mob.0001.ID15.0
    execute if score $Temp RPG.Mob.0001.ID matches ..-1 run tag @s add RPG.Mob.0001.ID15.1
    # お掃除
    scoreboard players reset $Temp RPG.Mob.0001.ID