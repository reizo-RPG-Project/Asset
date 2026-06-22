#> rpg:asset/object/0017.jukebox/play/_
#
# 
#
# @within function rpg:asset/object/0017.jukebox/tick/_

# すでに音楽が流れている場合は一度吐き出す
execute if data storage reizo_mcfunc_engin:context this.PlayingRecordData run function rpg:asset/object/0017.jukebox/common/back_record.m with storage reizo_mcfunc_engin:context this.PlayingRecordData

# 入れる
data modify storage reizo_mcfunc_engin:context this.PlayingRecordData set from storage reizo_mcfunc_engin:context this.RecordItem

# プレイヤー処理
execute as @a[tag=RPG.Obj.0017.PlayPlayer] run function rpg:asset/object/0017.jukebox/play/player

# お掃除
data remove storage reizo_mcfunc_engin:context this.RecordItem