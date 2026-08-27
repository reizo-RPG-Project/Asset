#> rpg:asset/mob/0020.fire_fox/init/_
#
# 
#
# @within  pack.mcmeta

# 見た目
    # function aj:fire_fox/summon {args:{}}
    # ride @n[type=item_display,distance=..0.5] mount @s
    summon item_display ~ ~ ~ {item:{id:"stick",components:{item_model:"mob/0020/items"}},Tags:["RPG.Mob.0020.FireDisplay"]}
    ride @n[type=item_display,distance=..0.5,tag=RPG.Mob.0020.FireDisplay] mount @s
    # execute on passengers run ride @n[type=item_display,distance=..0.5,tag=RPG.Mob.0020.FireDisplay] mount @s

# 大きくする
data modify entity @e[type=item_display,tag=RPG.Mob.0020.FireDisplay,limit=1] transformation.scale set value [1.5f,1.5f,1.5f]

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"init/_"}

# 透明化
# execute on vehicle run effect give @s invisibility infinite 1 true