#> rpg:asset/object/0017.jukebox/common/play.m
#
# 
#
# @within function
# rpg:asset/object/0017.jukebox/play/player
# rpg:asset/object/0017.jukebox/playing/player
# rpg:asset/object/0017.jukebox/re_play/_

# 現在此奴に流れているすべての楽曲を停止
function rpg:asset/object/0017.jukebox/common/all_stop

# 四方向から再生することで全方向からまんべんなく音を聞こえるように。
$playsound $(name) record @s 600 0 600 64 1 1
$playsound $(name) record @s -600 0 600 64 1 1
$playsound $(name) record @s 600 0 -600 64 1 1
$playsound $(name) record @s -600 0 -600 64 1 1

# タイマー
$scoreboard players set @s RPG.Obj.0017.Length $(LengthInTick)