#> rpg:asset/item/0002.abstract_weapon/tick/summon_click_detection
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/tick/_

execute positioned ~ ~-0.005 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}
execute positioned ~ ~-0.805 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}
execute positioned ~0.205 ~-0.62 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}
execute positioned ~-0.205 ~-0.62 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}
execute positioned ~ ~-0.62 ~0.205 run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}
execute positioned ~ ~-0.62 ~-0.205 run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}