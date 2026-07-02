#> rpg:asset/item/9000.echo_shell/tick/return_tp/tp
#
# 
#
# @within function rpg:asset/item/9000.echo_shell/tick/return_tp/_

# MPが足りない
execute if score @s RPG.MP matches ..34 run tellraw @s {text:"MPが足りません！必要MP35",color:"red"}
execute if score @s RPG.MP matches ..34 run return run playsound block.note_block.bass master @s ~ ~ ~ 1 1 1

# tp
tp @s ~ ~ ~

# rot
rotate @s facing entity @n[type=villager]

# 演出
    playsound entity.enderman.teleport master @a[distance=..15] ~ ~ ~
    particle dust{color:[0.8,0,1],scale:1} ~ ~ ~ 0.45 1.5 0.45 5 50 normal @a[distance=..10]
    tellraw @a {"text":"帰還します..."}

# MP消費
scoreboard players remove @s RPG.MP 35