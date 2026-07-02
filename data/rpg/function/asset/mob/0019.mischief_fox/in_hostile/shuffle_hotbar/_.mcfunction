#> rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/_
#
# 
#
# @within function rpg:asset/mob/0019.mischief_fox/in_hostile/_

# シャッフル回数を決める
execute store result score $Mob.0019.ShuffleCount RPG.Temp run random value 1..4

# ホットバーリスト作成
data modify storage reizo_mcfunc_engin:context this.Shuffle.List set value [0,1,2,3,4,5,6,7,8]

# 移動前を決める
    scoreboard players operation $Mob.0019.ShuffleCountTemp RPG.Temp = $Mob.0019.ShuffleCount RPG.Temp
    function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/set_origin_slot/foreach
    data modify storage reizo_mcfunc_engin:context this.OriginSlot set from storage reizo_mcfunc_engin:context this.Shuffle.data
    data remove storage reizo_mcfunc_engin:context this.Shuffle.data

# 移動先を決める
    scoreboard players operation $Mob.0019.ShuffleCountTemp RPG.Temp = $Mob.0019.ShuffleCount RPG.Temp
    function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/select_destination/foreach
    data modify storage reizo_mcfunc_engin:context this.Destination set from storage reizo_mcfunc_engin:context this.Shuffle.data
    data remove storage reizo_mcfunc_engin:context this.Shuffle.data

# 移動
    scoreboard players operation $Mob.0019.ShuffleCountTemp RPG.Temp = $Mob.0019.ShuffleCount RPG.Temp
    function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/shuffle/foreach

# お掃除
    data remove storage reizo_mcfunc_engin:context this.Shuffle.max
    data remove storage reizo_mcfunc_engin:context this.Shuffle.index
    scoreboard players reset $Mob.0019.ShuffleCountTemp
    scoreboard players reset @s RPG.Mob.0019.ShuffleTimer