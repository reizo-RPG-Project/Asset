#> rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/fail
#
# 
#
# @within function rpg:asset/object/9000.abstract_cauldron/tick/interaction/player/_

# 再生中だったら流さない。
execute if entity @n[tag=RPG.Obj.9000.AJ,tag=aj.cauldron.animation.fail.playing] run return 0

# anim
execute as @n[tag=RPG.Obj.9000.AJ] run function rpg:asset/object/9000.abstract_cauldron/common/fail_direction

# 声掛け
tellraw @a ["<",{"text":"0",font:"icon/face/0005.cauldron/_"},"ナベっすぁん。","> アイテムがないヨ"]