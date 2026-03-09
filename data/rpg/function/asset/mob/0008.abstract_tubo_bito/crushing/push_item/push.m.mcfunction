#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/push.m
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/_

# アイテム召喚
$execute positioned ~ ~1.5 ~ run function reizo_mcfunc_engin:api/item/give.m {ID:"$(ID)",namespace:"rpg"}

# プレイヤーに向けてMotion適応
    scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 100
    execute positioned ~ ~1.5 ~ run data modify entity @n[type=item,distance=..1] Rotation set from entity @s Rotation
    execute positioned ~ ~1.5 ~ as @n[type=item,distance=..1] at @s run function reizo_libs:motion/pounce_on

# 音
playsound block.note_block.bell master @a ~ ~ ~