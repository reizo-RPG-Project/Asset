#> rpg:asset/item/9000.echo_shell/tick/used/show_entity_lore/find_rec
#
# 
#
# @within function rpg:asset/item/9000.echo_shell/tick/used/show_entity_lore/_

# 当たり判定可視化
    particle wax_on ~-0.25 ~-0.25 ~-0.25 0 0 0 0 1 force
    particle wax_off ~0.25 ~0.25 ~0.25 0 0 0 0 1 force

# 当たり判定タグつけ
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0002.Enemy,dx=0,type=!player] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run return run tag @s add RPG.Item.9000.Target

# リーチの限界まで再帰 30ブロック
    execute positioned ^ ^ ^0.5 if entity @s[distance=..29.5] if block ~ ~ ~ #reizo_mcfunc_engin:no_col run return run function rpg:asset/item/9000.echo_shell/tick/used/show_entity_lore/find_rec
    execute positioned ^ ^ ^0.5 if entity @s[distance=..29.5] run function rpg:asset/item/9000.echo_shell/tick/used/show_entity_lore/find_rec