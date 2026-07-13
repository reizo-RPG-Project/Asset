#> rpg:core/load/asset
#
# 
#
# @within tag/function minecraft:load

#> Dev
    # Core側のスコアを一時的に記述
        # Sys
        scoreboard objectives add RPG.Temp dummy
        scoreboard objectives add RPG.Const dummy
            # ステータス
            scoreboard objectives add RPG.HP dummy
            scoreboard objectives add RPG.HP_MAX dummy
            scoreboard objectives add RPG.OriginHP_MAX dummy
            scoreboard objectives add RPG.HP_regen dummy
            scoreboard objectives add RPG.OriginHP_regen dummy
            scoreboard objectives add RPG.HP_Timer dummy
            scoreboard objectives add RPG.MP dummy
            scoreboard objectives add RPG.MP_MAX dummy
            scoreboard objectives add RPG.OriginMP_MAX dummy
            scoreboard objectives add RPG.MP_regen dummy
            scoreboard objectives add RPG.OriginMP_regen dummy
            scoreboard objectives add RPG.MP_Timer dummy
            scoreboard objectives add RPG.STR dummy
            scoreboard objectives add RPG.OriginSTR dummy
            scoreboard objectives add RPG.INT dummy
            scoreboard objectives add RPG.OriginINT dummy
            scoreboard objectives add RPG.DEF dummy
            scoreboard objectives add RPG.OriginDEF dummy
            scoreboard objectives add RPG.Bonus.HP_MAX dummy
            scoreboard objectives add RPG.Bonus.HP_regen dummy
            scoreboard objectives add RPG.Bonus.MP_MAX dummy
            scoreboard objectives add RPG.Bonus.MP_regen dummy
            scoreboard objectives add RPG.Bonus.DEF dummy
            scoreboard objectives add RPG.Bonus.STR dummy
            scoreboard objectives add RPG.Bonus.INT dummy
            scoreboard objectives add RPG.Buff.HP_MAX dummy
            scoreboard objectives add RPG.Buff.HP_regen dummy
            scoreboard objectives add RPG.Buff.MP_MAX dummy
            scoreboard objectives add RPG.Buff.MP_regen dummy
            scoreboard objectives add RPG.Buff.DEF dummy
            scoreboard objectives add RPG.Buff.STR dummy
            scoreboard objectives add RPG.Buff.INT dummy
        # その他
        scoreboard objectives add RPG.DMG dummy

# スコア作成
    # アセット
        # Mob
        scoreboard objectives add RPG.Mob.0002.ID dummy
        scoreboard objectives add RPG.Mob.0002.SeriouslyValue dummy
        scoreboard objectives add RPG.Mob.0002.AITimer dummy
        scoreboard objectives add RPG.Mob.0005.Timer dummy
        scoreboard objectives add RPG.Mob.0005.Start_Time dummy
        scoreboard objectives add RPG.Mob.0005.Start_Time.Temp dummy
        scoreboard objectives add RPG.Mob.0005.Reset_Time dummy
        scoreboard objectives add RPG.Mob.0005.Summon_Time dummy
        scoreboard objectives add RPG.Mob.0005.Summon dummy
        scoreboard objectives add RPG.Mob.0007.ID dummy
        scoreboard objectives add RPG.Mob.0009.Talk dummy
        scoreboard objectives add RPG.Mob.0010.Talk dummy
        scoreboard objectives add RPG.Mob.0011.Timer dummy
        scoreboard objectives add RPG.Mob.0012.Talk dummy
        scoreboard objectives add RPG.Mob.0012.Talk.RNG dummy
        scoreboard objectives add RPG.Mob.0013.Talk dummy
        scoreboard objectives add RPG.Mob.0014.Talk dummy
        scoreboard objectives add RPG.Mob.0015.Timer dummy
        scoreboard objectives add RPG.Mob.0019.ShuffleTimer dummy
        # Object
        scoreboard objectives add RPG.Obj.0003.In_Hostil.Delay dummy
        scoreboard objectives add RPG.Obj.0003.HP dummy
        scoreboard objectives add RPG.Obj.0003.ID dummy
        scoreboard objectives add RPG.Obj.0006.PlayerGetCount dummy
        scoreboard objectives add RPG.Obj.0009.Open.Close_Check_Time dummy
        scoreboard objectives add RPG.Obj.0014.Duration dummy
        scoreboard objectives add RPG.Obj.0017.Length dummy
        scoreboard objectives add RPG.Obj.0018.TT dummy
        scoreboard objectives add RPG.Obj.0018.x dummy
        scoreboard objectives add RPG.Obj.0018.z dummy
        scoreboard objectives add RPG.Obj.9000.Success dummy
        # Item
        scoreboard objectives add RPG.Item.0010.Status dummy
        scoreboard objectives add RPG.Item.0040.Temp dummy
        scoreboard objectives add RPG.Item.0043.ID dummy
        # ダンジョン
            # Common
            scoreboard objectives add RPG.Dungeon dummy
        #