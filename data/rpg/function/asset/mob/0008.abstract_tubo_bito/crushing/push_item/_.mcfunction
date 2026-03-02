#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/_
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/crushing/_

# レア度を決める
function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/set_rarity

# そのレア度のアイテムのリストを取得する。
function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/get_data/rarity.m with storage reizo_mcfunc_engin:context this

# そのリストの長さを取得
execute store result storage reizo_mcfunc_engin:context this.Items.Len int 1 run data get storage reizo_mcfunc_engin:context this.Items.List.List

# その長さから乱数でIndexを決め、そのレア度のアイテムを引く
function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/roll.m with storage reizo_mcfunc_engin:context this.Items

# スコアが存在しないなら1に
execute unless score $Index RPG.Temp matches 0.. run scoreboard players set $Index RPG.Temp 1

# Indexなので-1しなくては！
execute store result storage reizo_mcfunc_engin:context this.Items.Roll int 1 run scoreboard players remove $Index RPG.Temp 1

# お掃除
scoreboard players reset $Index RPG.Temp

tellraw @a {"storage":"reizo_mcfunc_engin:context",nbt:"this.Items.Roll"}

# アイテムのIDをリストから取得
function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/get_data/id.m with storage reizo_mcfunc_engin:context this.Items

# IDからアイテムをゲット
function rpg:asset/mob/0008.abstract_tubo_bito/crushing/push_item/push.m with storage reizo_mcfunc_engin:context this.Items