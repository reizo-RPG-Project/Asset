#> rpg:asset/object/9000.abstract_cauldron/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# プレイヤーが近くにいないなら動かない
execute unless entity @p[gamemode=!spectator,distance=..5.5] run return 0

# お前がAJだ！
tag @n[type=item_display,tag=aj.cauldron.root] add RPG.Obj.9000.AJ

# こっちを見る
execute as @n[tag=RPG.Obj.9000.AJ] facing entity @p eyes run rotate @s ~ 0

# データが三つなら演出
execute if data storage reizo_mcfunc_engin:context this.Items[-3] run particle electric_spark ~ ~0.5 ~ 0.5 0.5 0.5 0 1

# 右クリした！
execute if data entity @s interaction.player run function rpg:asset/object/9000.abstract_cauldron/tick/interaction/_

# シフト長押しで返却
execute if score @p[distance=..7.5] reizo_mcfunc_Engin.Sneaking matches 40 if data storage reizo_mcfunc_engin:context this.Items[0] run function rpg:asset/object/9000.abstract_cauldron/common/give_back/foreach

# ajの動作
execute as @n[tag=RPG.Obj.9000.AJ] at @s run function rpg:asset/object/9000.abstract_cauldron/tick/aj

# お掃除
tag @n[tag=RPG.Obj.9000.AJ] remove RPG.Obj.9000.AJ