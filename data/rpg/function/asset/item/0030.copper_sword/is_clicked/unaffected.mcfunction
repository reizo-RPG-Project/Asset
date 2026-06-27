#> rpg:asset/item/0030.copper_sword/is_clicked/unaffected
#
# 
#
# @within function rpg:asset/item/0030.copper_sword/is_clicked/_

# リセット
    data modify storage reizo_mcfunc_engin:context this.oxidationProgress set value 1

# 見た目変える
item modify entity @s weapon.mainhand {function:"set_components",components:{item_model:"item/0030/unaffected"}}

# 演出
    playsound item.totem.use master @s ~ ~ ~ 0.4 1.7
    particle item{item:"oxidized_copper"} ~ ~1.5 ~ 0.5 0.5 0.5 0 75

# TODO:何かしらのバフやら...バフ作らなきゃ...