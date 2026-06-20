#> rpg:asset/object/0017.jukebox/play/player
#
# 
#
# @within function rpg:asset/object/0017.jukebox/play/_

# お願いOMD!
    function #oh_my_dat:please

# UIセット
    # register
    function rpg:asset/object/0017.jukebox/play/get_item_register.m with storage reizo_mcfunc_engin:context this.PlayingRecordData
    # データセット
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text set value [{"text":"再生中: ",color:"green"},{"text":"ID",font:"icon/record","shadow_color":0,color:"white"},{"text":"name"}]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text[-1] set from storage reizo_mcfunc_engin:item Register.Name
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text[-2].text set from storage reizo_mcfunc_engin:context this.PlayingRecordData.IconID
    # 文字数によるスペースの追加数
        execute store result score $StringLen RPG.Temp run data get storage reizo_mcfunc_engin:item Register.Name.text
        scoreboard players operation $NameLen RPG.Temp = $StringLen RPG.Temp
        scoreboard players remove $NameLen RPG.Temp 1
        scoreboard players operation $NameLen RPG.Temp *= #6 RPG.Const
        execute if score $StringLen RPG.Temp matches 11.. run scoreboard players remove $NameLen RPG.Temp 2
        function rpg:asset/object/0017.jukebox/play/space_set/_
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text append value []
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text[-1] set from storage reizo_mcfunc_engin:context this.SetSpace
    # お掃除
    data remove storage reizo_mcfunc_engin:item Register
    data remove storage reizo_mcfunc_engin:context this.SetSpace

# お掃除
tag @s remove RPG.Obj.0017.PlayPlayer