#> rpg:asset/mob/0008.abstract_tubo_bito/crushing/_
#
# 
#
# @within function rpg:asset/mob/0008.abstract_tubo_bito/tick/_

# もらったアイテムが壺でなければ動作を止める
execute unless data entity @n[type=item,distance=..1.5] Item{id:"minecraft:decorated_pot"} run return 0

# データ取得
data modify storage reizo_mcfunc_engin:context this.TypeList set from entity @n[type=item,distance=..1.5] Item.components."minecraft:pot_decorations"

# Forライブラリ
    # 再帰回数
    execute store result storage reizo_mcfunc_engin:lib In.For.LoopCount int 1 run data get entity @n[type=item,distance=..1.5] Item.count
    # 実行関数
    data modify storage reizo_mcfunc_engin:lib In.For.func set value "rpg:asset/mob/0008.abstract_tubo_bito/crushing/loop"
    # 実行
    function reizo_libs:for/_

# 壺を消す
kill @n[type=item,distance=..1.5]