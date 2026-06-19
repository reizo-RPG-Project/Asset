#> rpg:asset/object/0017.jukebox/tick/get_record
#
# 
#
# @within function rpg:asset/object/0017.jukebox/tick/_

# タグツケ
$tag @a[nbt={UUID:$(player)},distance=..25] add RPG.Obj.0017.PlayPlayer

# お掃除
data remove entity @s interaction

# どっちも素手だったら吐き出す
execute if data storage reizo_mcfunc_engin:context this.PlayingRecordData unless items entity @a[tag=RPG.Obj.0017.PlayPlayer] weapon.* stick[custom_data~{Item:{Field:{RecordData:{}}}}] run function rpg:asset/object/0017.jukebox/common/back_record.m with storage reizo_mcfunc_engin:context this.PlayingRecordData

#
execute as @a[tag=RPG.Obj.0017.PlayPlayer] if items entity @s weapon.mainhand stick[custom_data~{Item:{Field:{RecordData:{}}}}] run data modify storage reizo_mcfunc_engin:context this.RecordItem set from entity @s SelectedItem.components."minecraft:custom_data".Item.Field.RecordData
execute as @a[tag=RPG.Obj.0017.PlayPlayer] if items entity @s weapon.mainhand stick[custom_data~{Item:{Field:{RecordData:{}}}}] run return run function reizo_mcfunc_engin:api/item/count/remove.m {Value:1,Slot:"mainhand"}
execute as @a[tag=RPG.Obj.0017.PlayPlayer] if items entity @s weapon.offhand stick[custom_data~{Item:{Field:{RecordData:{}}}}] run data modify storage reizo_mcfunc_engin:context this.RecordItem set from entity @s equipment.offhand.components."minecraft:custom_data".Item.Field.RecordData
execute as @a[tag=RPG.Obj.0017.PlayPlayer] if items entity @s weapon.offhand stick[custom_data~{Item:{Field:{RecordData:{}}}}] run return run function reizo_mcfunc_engin:api/item/count/remove.m {Value:1,Slot:"offhand"}