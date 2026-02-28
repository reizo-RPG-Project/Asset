#> rpg:asset/object/0006.abstract_edamame/get/init
#
# 
#
# @within function rpg:asset/object/0006.abstract_edamame/get/_

# タグつけ
tag @s add RPG.Obj.0006.Give.Inited

# スコアアップ
execute if score @s RPG.Obj.0006.PlayerGetCount matches 0..2 run scoreboard players add @s RPG.Obj.0006.PlayerGetCount 1

# 残り何個か教える
title @s actionbar [{"text":"3",color:"aqua"},{"text":" / ",color:"white"},{score:{name:"@s",objective:"RPG.Obj.0006.PlayerGetCount"},color:"gold"}]

# TODO: 三個目になったらガイド
execute if score @s RPG.Obj.0006.PlayerGetCount matches 3 run playsound entity.player.levelup master @s ~ ~ ~ 0.5 2 0.5

# 音
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.2 2 0.2