#> rpg:asset/item/0038.slime_ball/trigger/fall
#
# 
#
# @within advancement rpg:asset/item/0038/fall

# 進捗剥奪
advancement revoke @s only rpg:asset/item/0038/fall

# このアイテムを持っていなければ動作終了
    # データ取得
    data modify storage reizo_mcfunc_engin:context this.Inventory.9 set from entity @s Inventory[{Slot:9b}]
    data modify storage reizo_mcfunc_engin:context this.Inventory.10 set from entity @s Inventory[{Slot:10b}]
    data modify storage reizo_mcfunc_engin:context this.Inventory.11 set from entity @s Inventory[{Slot:11b}]
    # どこにもアイテムのデータが無ければ動作を終了する
    execute \
    unless data storage reizo_mcfunc_engin:context this.Inventory{9:{id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{Item:{ID:"0038.slime_ball"}}}}} \
    unless data storage reizo_mcfunc_engin:context this.Inventory{10:{id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{Item:{ID:"0038.slime_ball"}}}}} \
    unless data storage reizo_mcfunc_engin:context this.Inventory{11:{id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{Item:{ID:"0038.slime_ball"}}}}} run \
    return 0
    # お掃除
    data remove storage reizo_mcfunc_engin:context this.Inventory

# VecYを取得
    # お願いOMD!
    function #oh_my_dat:please
    # OUT OMD
    data modify storage reizo_mcfunc_engin:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.0038.this

# VecYに-1をかけてベクトルを反転させる(本来は-1だがhb.motionの仕様上10000倍にしなければならないので-10000倍に)
execute store result storage reizo_mcfunc_engin:context this.VecY double 1 run data get storage reizo_mcfunc_engin:context this.VecY -10000

# プレイヤーに適応させる
    # X,Zは変更しないので0に
    scoreboard players set $x hb.Motion 0
    scoreboard players set $z hb.Motion 0
    # ライブラリ引数に反転させたベクトルを渡す
    execute store result score $y hb.Motion run data get storage reizo_mcfunc_engin:context this.VecY
    # ライブラリ使用
    function #p_motion:xyz

# お掃除
data remove storage reizo_mcfunc_engin:context this