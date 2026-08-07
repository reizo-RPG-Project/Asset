#> rpg:asset/object/0017.jukebox/join/_
#
# 
#
# @within function rpg:asset/object/0017.jukebox/tick/_

# 再生中なら再再生
execute if data storage reizo_mcfunc_engin:context this.PlayingRecordData as @a run return run function rpg:asset/object/0017.jukebox/common/play.m with storage reizo_mcfunc_engin:context this.PlayingRecordData

# お願いOMD!
function #oh_my_dat:please

# データ削除
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record