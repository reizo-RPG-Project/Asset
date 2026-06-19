#> rpg:asset/object/0017.jukebox/common/back_record.m
#
# 
#
# @within function rpg:asset/object/0017.jukebox/tick/get_record

# Give
$execute positioned ~ ~1 ~ run function reizo_mcfunc_engin:api/item/give.m {ID:"$(ID)",namespace:"rpg"}

# プレイヤーの方に向ける
execute positioned ~ ~1 ~ run rotate @n[type=item] facing entity @p[tag=RPG.Obj.0017.PlayPlayer] eyes

# 飛ばす
scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 100
execute positioned ~ ~1 ~ as @n[type=item] run function reizo_libs:motion/pounce_on

# 曲ストップ
function rpg:asset/object/0017.jukebox/common/all_stop

# 演出
    particle white_smoke ~ ~1.25 ~ 0.1 0.1 0.1 0 15
    playsound block.dispenser.launch master @a ~ ~ ~ 1 2 1

# お掃除
    data remove storage reizo_mcfunc_engin:context this.PlayingRecordData