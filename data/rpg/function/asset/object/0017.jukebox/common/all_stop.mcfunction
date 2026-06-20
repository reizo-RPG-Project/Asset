#> rpg:asset/object/0017.jukebox/common/all_stop
#
# 
#
# @within function rpg:asset/object/0017.jukebox/tick/back_record.m

stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.13
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.cat
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.blocks
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.chirp
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.far
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.mall
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.mellohi
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.stal
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.strad
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.ward
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.11
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.creator_music_box
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.wait
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.creator
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.precipice
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.otherside
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.relic
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.5
stopsound @a[tag=RPG.Obj.0017.PlayPlayer] record music_disc.pigstep

# お掃除
    execute as @a[tag=RPG.Obj.0017.PlayPlayer] run function #oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record