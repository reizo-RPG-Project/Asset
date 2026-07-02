#> rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/set_origin_slot/foreach
#
# 
#
# @within function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/_

# 1減らす
scoreboard players remove $Mob.0019.ShuffleCountTemp RPG.Temp 1

# ランダムに追加
    execute store result storage reizo_mcfunc_engin:context this.Shuffle.max int 1 run data get storage reizo_mcfunc_engin:context this.Shuffle.List
    function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/common/set.m with storage reizo_mcfunc_engin:context this.Shuffle
    function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/common/add.m with storage reizo_mcfunc_engin:context this.Shuffle

# 残るなら再帰
execute if score $Mob.0019.ShuffleCountTemp RPG.Temp matches 1.. run function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/set_origin_slot/foreach