#> rpg:asset/0051.juck_o_luntern/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# チェック
function rpg:asset/item/0051.juck_o_luntern/tick/check/_

# 親クラスの動作を呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"tick/_"}