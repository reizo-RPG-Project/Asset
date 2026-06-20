#> rpg:asset/object/0017.jukebox/play/space_set/4
#
# 
#
# @within function rpg:asset/object/0017.jukebox/play/space_set/_

# remove
scoreboard players remove $NameLen RPG.Temp 4

# add
data modify storage reizo_mcfunc_engin:context this.SetSpace append value {"text":"\uF804",font:"space"}

# 残るなら再帰
execute if score $NameLen RPG.Temp matches 1.. run function rpg:asset/object/0017.jukebox/play/space_set/_