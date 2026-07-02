#> rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/shuffle/foreach
#
# 
#
# @within function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/_

# データ取得
    data modify storage reizo_mcfunc_engin:context this.Shuffle.origin set from storage reizo_mcfunc_engin:context this.OriginSlot[-1]
    data modify storage reizo_mcfunc_engin:context this.Shuffle.des set from storage reizo_mcfunc_engin:context this.Destination[-1]

# 移動
execute as @p[distance=..1.5] run function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/shuffle/shuffle.m with storage reizo_mcfunc_engin:context this.Shuffle

# 消す
    data remove storage reizo_mcfunc_engin:context this.OriginSlot[-1]
    data remove storage reizo_mcfunc_engin:context this.Destination[-1]

# 残るなら再帰
    execute \
    if data storage reizo_mcfunc_engin:context this.OriginSlot[0] \
    if data storage reizo_mcfunc_engin:context this.Destination[0] run \
    function rpg:asset/mob/0019.mischief_fox/in_hostile/shuffle_hotbar/shuffle/foreach