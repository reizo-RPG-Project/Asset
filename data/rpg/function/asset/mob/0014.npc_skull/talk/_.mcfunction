#> rpg:asset/mob/0014.npc_skull/talk/_
#
# 
#
# @within function rpg:asset/mob/0014.npc_skull/summon/_

# 普通のテキスト
execute if score @s RPG.Mob.0014.Talk matches 1..3 run return run tellraw @s "..."
execute if score @s RPG.Mob.0014.Talk matches 4 run return run tellraw @s "<スカル> よう。"
execute if score @s RPG.Mob.0014.Talk matches 5 run return run tellraw @s "<スカル> 驚いたか？"
execute if score @s RPG.Mob.0014.Talk matches 6 run return run tellraw @s "<スカル> へへへ..."
execute if score @s RPG.Mob.0014.Talk matches 7 run return run tellraw @s "<スカル> ここに人が来るのは随分と久しぶりだよ"
execute if score @s RPG.Mob.0014.Talk matches 8 run return run tellraw @s "<スカル> 俺ぁずっとここに一人でいたからな"
execute if score @s RPG.Mob.0014.Talk matches 9 run return run tellraw @s "<スカル> ...昔、俺もお前と同じようにこの島を救おうとしたんだよ。"
execute if score @s RPG.Mob.0014.Talk matches 10 run return run tellraw @s [{"text":"<スカル> ただ...この先にいる",color:"white"},{"text":"モンスター",color:"yellow"},{"text":"にやられちまってさ",color:"white"}]
execute if score @s RPG.Mob.0014.Talk matches 11 run return run tellraw @s "<スカル> 長生きたいなら行かないほうがいいぜ。"
execute if score @s RPG.Mob.0014.Talk matches 12 run return run tellraw @s "<スカル> ...っま、どうせ俺はお前を止められないだろうけどさ。"
execute if score @s RPG.Mob.0014.Talk matches 13.. run return run tellraw @s "<スカル> 忠告はしたからな。"