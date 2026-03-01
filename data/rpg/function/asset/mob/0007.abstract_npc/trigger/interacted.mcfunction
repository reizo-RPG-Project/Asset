#> rpg:asset/mob/0007.abstract_npc/trigger/interacted
#
# 
#
# @within advancement rpg:asset/mob/0007/interacted

# dataの退避
function reizo_mcfunc_engin:asset/.manager/common/context/data/stash

# dataのプッシュ
function reizo_mcfunc_engin:asset/.manager/common/context/data/push

# 送られてきたデータ内に話す内容のデータが存在しないのなら動作を打ち切る
execute unless data storage reizo_mcfunc_engin:context data.Field.Talk run return run function rpg:asset/mob/0007.abstract_npc/trigger/core/interacted/fail

# タグツケ
tag @n[tag=!RPG.Mob.0007.Talk] add RPG.Mob.0007.Talk

# dataの解放
function reizo_mcfunc_engin:asset/.manager/common/context/data/pop