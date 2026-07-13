#> rpg:asset/object/0014.boss_portal/tick/in/fail
#
# 失敗！
#
# @within function rpg:asset/object/0014.boss_portal/tick/in/_

# 飛ばして戻す
    scoreboard players set $x hb.Motion 0
    scoreboard players set $y hb.Motion 1500
    scoreboard players set $z hb.Motion 0
    function #p_motion:xyz