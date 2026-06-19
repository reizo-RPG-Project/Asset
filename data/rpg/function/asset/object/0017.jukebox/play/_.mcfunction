#> rpg:asset/object/0017.jukebox/play/_
#
# 
#
# @within function rpg:asset/object/0017.jukebox/tick/_

# 流す
function rpg:asset/object/0017.jukebox/play/play.m with storage reizo_mcfunc_engin:context this.RecordItem

# 入れる
data modify storage reizo_mcfunc_engin:context this.PlayingRecordData set from storage reizo_mcfunc_engin:context this.RecordItem

# プレイヤー処理
execute as @a[tag=RPG.Obj.0017.PlayPlayer] run function rpg:asset/object/0017.jukebox/play/player

# お掃除
data remove storage reizo_mcfunc_engin:context this.RecordItem