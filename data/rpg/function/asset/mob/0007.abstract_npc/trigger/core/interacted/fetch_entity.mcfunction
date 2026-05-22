#> rpg:asset/mob/0007.abstract_npc/trigger/core/interacted/fetch_entity
#
# 
#
# @within function rpg:asset/mob/0007.abstract_npc/trigger/core/interacted/filters/0

# Common
# function rpg:common/fetch_entity/mob
    function reizo_mcfunc_engin:asset/.manager/common/context/args/push
    function reizo_mcfunc_engin:asset/.manager/common/context/data/push
    function reizo_mcfunc_engin:asset/.manager/common/context/this/push

# スコアをアップする
function rpg:asset/mob/0007.abstract_npc/talk/add.m with storage reizo_mcfunc_engin:context data.Field

# メソッド実行
execute as @p run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"talk/_"}