#> rpg:asset/item/0033.resin_wand/is_clicked/_
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/tick/_

# 演出
    playsound entity.creaking.ambient master @s ~ ~ ~ 1 2 1
    execute anchored eyes run particle block{block_state:"resin_block"} ^ ^ ^1 0.5 0.5 0.5 0 15

# 親クラスの動作呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"is_clicked/_"}