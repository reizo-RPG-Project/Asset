#> rpg:asset/item/9000.echo_shell/tick/return_tp/tp
#
# 
#
# @within function rpg:asset/item/9000.echo_shell/tick/return_tp/_

# tp
tp @s 21 18 -2

# rot
rotate @s facing entity @n[type=villager]

# 演出
    playsound entity.enderman.teleport master @a[distance=..15] 21 18 -2
    particle dust{color:[0.8,0,1],scale:1} 21 18 -2 0.45 1.5 0.45 5 50 normal @a[distance=..10]
    tellraw @a {"text":"帰還します..."}