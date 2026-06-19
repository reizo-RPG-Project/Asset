#> rpg:asset/object/0017.jukebox/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/run.m

# ブロック当たり判定設置
setblock ~ ~ ~ barrier

execute align xyz run summon block_display ~ ~ ~ {block_state:{Name:"jukebox"}}