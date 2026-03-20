#> rpg:asset/item/0042.earth_blessing/common/reset
#
# 
#
# @within function rpg:asset/item/0042.earth_blessing/tick/_

# Init処理をしたことが宣言されていないのなら動作を終了する
execute if entity @s[tag=!RPG.Item.0042.OnGround.isInitialized] run return 0

# タグ剥奪
tag @s remove RPG.Item.0042.OnGround.isInitialized

# ステータスダウン
    scoreboard players remove @s RPG.HP_MAX 20
    scoreboard players remove @s RPG.STR 10
    scoreboard players remove @s RPG.DEF 15