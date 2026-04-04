#> rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/level/1/001
#
# 
#
# @within function rpg:asset/item/0047.abstract_cokkie/hold_main/is_clicked/level/1/_

# タイトルを少し華やかに！
title @s actionbar {score:{name:"@s",objective:"RPG.Item.0047.ClickCount"},color:"yellow",bold:1b}

# 次のcountを決める
scoreboard players set @s RPG.Item.0047.NextCount 250

# FX
    playsound entity.player.levelup master @s ~ ~ ~ 0.5 1.5 1
    summon firework_rocket ~ ~1 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"small_ball",has_twinkle:0b,has_trail:0b,colors:[255,255,255]}]}}}}