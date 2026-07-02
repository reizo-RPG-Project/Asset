#> rpg:asset/item/0030.copper_sword/charged/weathered
#
# 
#
# @within function rpg:asset/item/0030.copper_sword/charged/_

# 見た目変える
item modify entity @s weapon.mainhand {function:"set_components",components:{item_model:"item/0030/weathered"}}

# 演出
playsound block.anvil.place master @s ~ ~ ~ 0.5 1.4 0