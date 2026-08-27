#> rpg:asset/mob/0020.fire_fox/tick/_
#
# 
#
# @within function rpg:asset/mob/0020.fire_fox/init/_

# 親クラスのメソッドを呼ぶ
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"tick/_"}

# # タグツケ
# execute on vehicle run tag @s add RPG.Mob.0020.Vehicle

# #
#     execute as @e[tag=RPG.Mob.0020.Vehicle,limit=1] if predicate {condition:"entity_properties",entity:"this",predicate:{movement:{speed:{min:0.1}},flags:{is_on_ground:1b}}} on passengers as @s[tag=!aj.fire_fox.animation.walk.playing,tag=aj.fire_fox.root] run function aj:fire_fox/animations/walk/play

# # 頭を追従
#     # 計算
#     function rpg:asset/mob/0020.fire_fox/tick/calc
#     # 頭を動かす
#     data modify entity @e[type=item_display,tag=aj.fire_fox.node.head,limit=1] transformation.right_rotation set from storage reizo_mcfunc_engin:context this.right_rotation

# # bodyを頭から少し後に追従
#     # 初期値は0
#     execute unless score @s RPG.Mob.0020.bodyRot matches -2147483648..2147483647 run scoreboard players set @s RPG.Mob.0020.bodyRot 0
#     # 計算
#         # execute store result score $Mob.0020.Difference RPG.Temp run data get entity @e[tag=RPG.Mob.0020.Vehicle,limit=1] Rotation[0] 1000
#         # scoreboard players operation $Mob.0020.Difference RPG.Temp -= @s RPG.Mob.0020.bodyRot
#         # execute store result storage reizo_mcfunc_engin:context this.Difference float 0.3 run scoreboard players get $Mob.0020.Difference RPG.Temp
#         # execute store result score $Mob.0020.Difference RPG.Temp run data get storage reizo_mcfunc_engin:context this.Difference
#         # scoreboard players operation @s RPG.Mob.0020.bodyRot += $Mob.0020.Difference RPG.Temp
#         # execute store result score $Mob.0020.Difference RPG.Temp run data get entity @e[tag=RPG.Mob.0020.Vehicle,limit=1] Rotation[0] 1000
#         # scoreboard players operation $Mob.0020.Difference RPG.Temp -= @s RPG.Mob.0020.bodyRot
#         # execute if score $Mob.0020.Difference RPG.Temp matches 51000.. run scoreboard players remove $Mob.0020.Difference RPG.Temp 50000
#         # execute if score $Mob.0020.Difference RPG.Temp matches 51000.. run scoreboard players operation @s RPG.Mob.0020.bodyRot += $Mob.0020.Difference RPG.Temp
#         # data modify storage reizo_mcfunc_engin:context this.TempRot set from entity @e[tag=RPG.Mob.0020.Vehicle,limit=1] Rotation[0]
#         # execute store result entity @e[tag=RPG.Mob.0020.Vehicle,limit=1] Rotation[0] float 0.001 run scoreboard players get $Mob.0020.Difference RPG.Temp
#         # function rpg:asset/mob/0020.fire_fox/tick/calc
#         # data modify entity @e[tag=RPG.Mob.0020.Vehicle,limit=1] Rotation[0] set from storage reizo_mcfunc_engin:context this.TempRot
#         data modify storage reizo_mcfunc_engin:context this.right_rotation.axis append from storage reizo_mcfunc_engin:context this.right_rotation.axis[1]
#         data remove storage reizo_mcfunc_engin:context this.right_rotation.axis[1]
#         data modify entity @e[type=item_display,tag=aj.fire_fox.node.body,limit=1] transformation.right_rotation set from storage reizo_mcfunc_engin:context this.right_rotation

# # お掃除
#     execute on vehicle run tag @s remove RPG.Mob.0020.Vehicle
#     data remove storage reizo_mcfunc_engin:context this.right_rotation
#     data remove storage reizo_mcfunc_engin:context this.TempRot