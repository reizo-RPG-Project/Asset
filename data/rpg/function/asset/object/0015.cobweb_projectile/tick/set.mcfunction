#> rpg:asset/object/0015.cobweb_projectile/tick/set
#
# 
#
# @within function rpg:asset/object/0015.cobweb_projectile/tick/_

# この位置に蜘蛛の巣を設置
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #reizo_mcfunc_engin:no_col run setblock ~ ~ ~ cobweb
# execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle wax_on

# セットしたことを宣言
data modify storage reizo_mcfunc_engin:context this.IsBlockSet set value 1b

# 止まる
attribute @s gravity base set 0