#> rpg:asset/mob/0002.abstract_enemy/init/id_allocate/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/init/_

# すでに割り当てられているIDの中で使用されていない物があれば、それを割り当てる
execute if data storage rpg:mob 0002.IDStackStash[] run return run function rpg:asset/mob/0002.abstract_enemy/init/id_allocate/id_pool/_

# IDの割り当て
    # グローバルインデックス追加
        scoreboard players add $Core RPG.Mob.0002.ID 1
        scoreboard players operation $Core RPG.Mob.0002.ID %= #256 RPG.Const
        execute if score $Core RPG.Mob.0002.ID matches 0 run scoreboard players add $Core RPG.Mob.0002.ID 1
    # 直接IDとしてぶち込む
    scoreboard players operation @s RPG.Mob.0002.ID = $Core RPG.Mob.0002.ID
    # 一時的にコピー
    scoreboard players operation $Temp RPG.Mob.0002.ID = $Core RPG.Mob.0002.ID
    # tagセット
    function rpg:asset/mob/0002.abstract_enemy/init/id_allocate/tag_set