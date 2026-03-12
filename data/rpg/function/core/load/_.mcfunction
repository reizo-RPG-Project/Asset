#> rpg:core/load/_
#
# 
#
# @within tag/function minecraft:load

#> Dev
    # Core側のスコアを一時的に記述
    scoreboard objectives add RPG.Temp dummy
    scoreboard objectives add RPG.Const dummy
        # ステータス
        scoreboard objectives add RPG.HP dummy
        scoreboard objectives add RPG.HP_MAX dummy
        scoreboard objectives add RPG.OriginHP_MAX dummy
        scoreboard objectives add RPG.HP_regen dummy
        scoreboard objectives add RPG.HP_Timer dummy
        scoreboard objectives add RPG.STR dummy
        scoreboard objectives add RPG.OriginSTR dummy
        scoreboard objectives add RPG.INT dummy
        scoreboard objectives add RPG.OriginINT dummy
        scoreboard objectives add RPG.DEF dummy
        scoreboard objectives add RPG.OriginDEF dummy

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
        scoreboard objectives add RPG.Mob.0009.Talk dummy
        # Object
        scoreboard objectives add RPG.Obj.0003.In_Hostil.Delay dummy
        scoreboard objectives add RPG.Obj.0003.HP dummy
        scoreboard objectives add RPG.Obj.0006.PlayerGetCount dummy
        # Item
        scoreboard objectives add RPG.Item.0010.Status dummy
        scoreboard objectives add RPG.Item.0012.DEF_Math dummy
        scoreboard objectives add RPG.Item.0012.DEF_Math.Head dummy
        scoreboard objectives add RPG.Item.0012.DEF_Math.Chest dummy
        scoreboard objectives add RPG.Item.0012.DEF_Math.Legs dummy
        scoreboard objectives add RPG.Item.0012.DEF_Math.Feet dummy
        # ダンジョン
            # Common
            scoreboard objectives add RPG.Dungeon dummy
        #