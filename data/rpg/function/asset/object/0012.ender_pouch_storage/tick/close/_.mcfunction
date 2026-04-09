#> rpg:asset/object/0012.ender_pouch_storage/tick/close/_
#
# 
#
# @within function rpg:asset/object/0012.ender_pouch_storage/tick/open/player

# タグ剥奪
tag @p remove RPG.Obj.0012.Open

# お願いOMD!
function #oh_my_dat:please

# 最初にエンダーチェストを空っぽに
function rpg:asset/object/0012.ender_pouch_storage/tick/close/set_ender_chest/clear

# 今のチェストの中身が空っぽだったら動作を中断
execute on passengers unless data entity @s Items[0] run return 0

# もしあるんだったら現在のやつから配列を別けてセットしていく
    # thisに入れる
    data modify storage reizo_mcfunc_engin:context this.EnderItems set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Obj.0012.EnderItems
    # 今のチェストの中身をコピー
    execute on passengers run data modify storage reizo_mcfunc_engin:context this.EnderItems set from entity @s Items
    # 分けてセット
    execute on passengers run function rpg:asset/object/0012.ender_pouch_storage/tick/close/set_ender_chest/foreach

# OMD内にデータを戻す
execute on passengers run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Obj.0012.EnderItems set from entity @s Items

# お掃除
data remove storage reizo_mcfunc_engin:context this