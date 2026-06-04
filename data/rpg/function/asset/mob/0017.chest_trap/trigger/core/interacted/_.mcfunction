#> rpg:asset/mob/0017.chest_trap/trigger/core/interacted/_
#
# 
#
# @within function rpg:asset/mob/0017.chest_trap/trigger/interacted

# データ取得
    function reizo_mcfunc_engin:asset/.manager/common/context/args/push
    function reizo_mcfunc_engin:asset/.manager/common/context/this/push
    function reizo_mcfunc_engin:asset/.manager/common/context/data/push

# 爆発メソッド
function reizo_mcfunc_engin:api/call/_private.m {Type:"mob",Method:"explosion/_"}