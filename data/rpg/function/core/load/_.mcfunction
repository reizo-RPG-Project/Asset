#> rpg:core/load/_
#
# 
#
# @within tag/function minecraft:load

#> Dev
    # Core側のスコアを一時的に記述
    scoreboard objectives add RPG.Temp dummy
    scoreboard objectives add RPG.Const dummy

# スコア作成
    # アセット
        # Mob
        scoreboard objectives add RPG.Mob.0002.SeriouslyValue dummy
        scoreboard objectives add RPG.Mob.0002.AITimer dummy
        scoreboard objectives add RPG.Mob.0005.Timer dummy
        scoreboard objectives add RPG.Mob.0005.Start_Time dummy
        scoreboard objectives add RPG.Mob.0005.Start_Time.Temp dummy
        scoreboard objectives add RPG.Mob.0005.Reset_Time dummy
        scoreboard objectives add RPG.Mob.0005.Summon_Time dummy
        scoreboard objectives add RPG.Mob.0005.Summon dummy
        # Object
        scoreboard objectives add RPG.Obj.0003.In_Hostil.Delay dummy
        scoreboard objectives add RPG.Obj.0003.HP dummy
        # Item
        scoreboard objectives add RPG.Item.0012.DEF_Math dummy
        scoreboard objectives add RPG.Item.0012.DEF_Math.Head dummy
        scoreboard objectives add RPG.Item.0012.DEF_Math.Chest dummy
        scoreboard objectives add RPG.Item.0012.DEF_Math.Legs dummy
        scoreboard objectives add RPG.Item.0012.DEF_Math.Feet dummy
        # ダンジョン
            # Common
            scoreboard objectives add RPG.Dungeon dummy
        #