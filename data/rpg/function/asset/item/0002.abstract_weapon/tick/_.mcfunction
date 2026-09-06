#> rpg:asset/0002.abstract_weapon/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# クリック判定用Entityの召喚
# TODO: 泳いでいるときの処理、攻撃した瞬間にすぐ泳ぐと立っているときの処理になるので要注意。
execute anchored eyes positioned ^ ^ ^ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}

# クリックしたな！
execute if entity @s[tag=RPG.Input.IsClicked] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"is_clicked/_"}

# function reizo_mcfunc_engin:asset/item/super.tick