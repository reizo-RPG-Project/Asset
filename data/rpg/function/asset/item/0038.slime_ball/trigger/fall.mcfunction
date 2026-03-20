#> rpg:asset/item/0038.slime_ball/trigger/fall
#
# 
#
# @within advancement rpg:asset/item/0038/fall

# 進捗剥奪
advancement revoke @s only rpg:asset/item/0038/fall

# しゃがんでいるのなら跳ねない
execute if score @s reizo_mcfunc_Engin.Sneaking matches 1.. run return 0

# このアイテムを持っていなければ動作終了
    # データ取得
    data modify storage reizo_mcfunc_engin:context this.Inventory.9 set from entity @s Inventory[{Slot:9b}]
    data modify storage reizo_mcfunc_engin:context this.Inventory.10 set from entity @s Inventory[{Slot:10b}]
    data modify storage reizo_mcfunc_engin:context this.Inventory.11 set from entity @s Inventory[{Slot:11b}]
    # どこにもアイテムのデータが無ければ動作を終了する
    execute \
    unless data storage reizo_mcfunc_engin:context this.Inventory{9:{id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{Item:{Args:{ID:"0038.slime_ball"}}}}}} \
    unless data storage reizo_mcfunc_engin:context this.Inventory{10:{id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{Item:{Args:{ID:"0038.slime_ball"}}}}}} \
    unless data storage reizo_mcfunc_engin:context this.Inventory{11:{id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{Item:{Args:{ID:"0038.slime_ball"}}}}}} run \
    return 0
    # お掃除
    data remove storage reizo_mcfunc_engin:context this.Inventory

# bounceメソッド実行
    # 引数が無いので自分でセットする
    data modify storage reizo_mcfunc_engin:context origin_Args set value {ID:"0038.slime_ball",namespace:"rpg"}
    # メソッド実行
    function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"bounce/_"}
    # お掃除
    data remove storage reizo_mcfunc_engin:context origin_Args