#> rpg:asset/0063.migration/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# バージョンアップ
function reizo_mcfunc_engin:api/call/_private.m {Type:"item",Method:"versions/_"}

# 今のバージョンをセット
data modify storage reizo_mcfunc_engin:context this.NowVersion set from storage rpg:global Version