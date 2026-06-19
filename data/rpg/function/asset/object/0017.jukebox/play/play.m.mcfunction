#> rpg:asset/object/0017.jukebox/play/play.m
#
# 
#
# @within function rpg:asset/object/0017.jukebox/play/_

# 現在此奴に流れているすべての楽曲を停止
function rpg:asset/object/0017.jukebox/common/all_stop

$playsound $(name) record @a[tag=RPG.Obj.0017.PlayPlayer] 600 0 600 64 1 1
$playsound $(name) record @a[tag=RPG.Obj.0017.PlayPlayer] -600 0 600 64 1 1
$playsound $(name) record @a[tag=RPG.Obj.0017.PlayPlayer] 600 0 -600 64 1 1
$playsound $(name) record @a[tag=RPG.Obj.0017.PlayPlayer] -600 0 -600 64 1 1
