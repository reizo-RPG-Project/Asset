#> rpg:asset/mob/0017.chest_trap/explosion/_
#
# 
#
# @within function rpg:asset/mob/0017.chest_trap/trigger/interacted

# 爆発
    # 半径5メートルの奴は攻撃を喰らっている
    tag @a[distance=..5] add RPG.Victim
    execute if entity @p[tag=RPG.Victim,distance=..5] run tag @s add RPG.Attacker
    execute as @a[tag=RPG.Victim] at @s run scoreboard players operation @n[type=interaction,tag=RPG.Mob.0017] reizo_mcfunc_Engin.ScoreID = @p[tag=RPG.Victim,distance=0] reizo_mcfunc_Engin.ScoreID
    # 演出
    particle minecraft:explosion_emitter ~ ~ ~
    playsound minecraft:entity.lightning_bolt.impact ambient @a[distance=..5] ~ ~ ~ .5 .7
    execute as @a[tag=RPG.Victim] run damage @s 0.1 generic
    # attack処理
    execute if entity @p[tag=RPG.Victim,distance=..5] run function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"attack/_"}
    # 無くなる
    function reizo_mcfunc_engin:api/call/_private.m {Type:"mob",Method:"remove/_"}