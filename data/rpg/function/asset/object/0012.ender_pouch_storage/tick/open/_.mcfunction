#> rpg:asset/object/0012.ender_pouch_storage/tick/open/_
#
# 
#
# @within function rpg:asset/object/0012.ender_pouch_storage/tick/_

# プレイヤーの動作
execute as @p run function rpg:asset/object/0012.ender_pouch_storage/tick/open/player

# 一度だけFX
execute if entity @p[tag=!RPG.Obj.0012.FX_Once] run function rpg:asset/object/0012.ender_pouch_storage/tick/open/fx

# 閉めたな！
execute if data storage reizo_mcfunc_engin:context this{Close:1b} run function rpg:asset/object/0012.ender_pouch_storage/tick/close/_

# ここからはTP
execute positioned ~ ~1.1 ~ run tp @s ~ ~ ~