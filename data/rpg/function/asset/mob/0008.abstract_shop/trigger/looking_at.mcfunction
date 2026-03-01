#> rpg:asset/mob/0008.abstract_shop/trigger/looking_at
#
# 
#
# @within advancement rpg:asset/mob/0008/looking_at

# This
tag @s add This

# 俺は見た！
    tag @s add RPG.Mob.0008.Player.Looking
    tag @s add RPG.Mob.0008.Player.Looked

# 一時的に自分のdataを退避
function reizo_mcfunc_engin:asset/.manager/common/context/data/stash

# プレイヤーに結びついたobjectの召喚
    execute positioned ~ ~1.1 ~ unless entity @e[type=interaction,tag=reizo_mcfunc_Engin.Object] run function reizo_mcfunc_engin:api/object/summon.m {ID:"0009.shop_interaction",namespace:"rpg"}

# お掃除
    advancement revoke @s only rpg:asset/mob/0008/looking_at
    tag @s remove This