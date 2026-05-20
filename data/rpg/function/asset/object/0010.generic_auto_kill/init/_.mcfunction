#> rpg:asset/object/0010.generic_auto_kill/init/_
#
# 
#
# @within function rpg:asset/object/0009.loot_chest/register

# フィールドからキルされるまでの時間を取得する。
execute store result score @s reizo_mcfunc_Engin.KillTimer run data get storage reizo_mcfunc_engin:context this.KillTime