#> rpg:asset/item/0002.abstract_weapon/is_clicked/_
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/tick/_

# Attackerタグつけ
tag @s add RPG.Attacker

# 倍率を求める
    scoreboard players operation $Item.0002.AttackChargeMultiplier RPG.Temp = @s RPG.Item.0002.AttackCharge
    scoreboard players operation $Item.0002.AttackChargeMultiplier RPG.Temp *= #2000 RPG.Const
    scoreboard players operation $Item.0002.AttackChargeMultiplier RPG.Temp /= $Item.0002.AttackChargeTime RPG.Temp

# どれくらい貯めたか検知
    execute if score $Item.0002.AttackChargeMultiplier RPG.Temp matches 1000.. run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"charged/_"}
    execute if score $Item.0002.AttackChargeMultiplier RPG.Temp matches 0..999 run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"uncharged/_"}

# 当たり判定処理
execute anchored eyes positioned ^ ^ ^ run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"rec/_"}

# Hitしたやつへの処理
execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0002.Enemy,tag=RPG.Mob.0002.Hit,type=!player,distance=..100] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"hit/_"}

# お掃除
    scoreboard players set @s RPG.Item.0002.AttackCharge 0
    scoreboard players reset $Item.0002.AttackChargeMultiplier RPG.Temp
    tag @s remove RPG.Input.IsClicked
    tag @s remove RPG.Attacker
    advancement revoke @s only rpg:asset/item/0002/click_detection

# tellraw @a [{"selector":"@s",color:"gold"},{"text":"はクリックした！",color:"white"}]