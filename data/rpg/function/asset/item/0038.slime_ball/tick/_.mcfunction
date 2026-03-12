#> rpg:asset/0038.slime_ball/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# お願いOMD!
function #oh_my_dat:please

# OUT OMD
data modify storage reizo_mcfunc_engin:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0038.this

# 地に足がついていない場合にVecYを取っておく
execute if entity @s[tag=!reizo_mcfunc_Engin.Is_on_Ground] unless data entity @s {fall_distance:0.0d} run data modify storage reizo_mcfunc_engin:context this.VecY set from entity @s Motion[1]

# PUT OMD
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0038.this set from storage reizo_mcfunc_engin:context this