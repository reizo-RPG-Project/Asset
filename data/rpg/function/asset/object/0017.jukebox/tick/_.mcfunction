#> rpg:asset/object/0017.jukebox/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# 右クリした！
execute if data entity @s interaction.player run function rpg:asset/object/0017.jukebox/tick/get_record with entity @s interaction

# レコード再生
execute if data storage reizo_mcfunc_engin:context this.RecordItem run function rpg:asset/object/0017.jukebox/play/_

# 再生中
execute if data storage reizo_mcfunc_engin:context this.PlayingRecordData run function rpg:asset/object/0017.jukebox/playing/_