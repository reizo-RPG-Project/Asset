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
    # お掃除
    data remove storage reizo_mcfunc_engin:item Register

# お掃除
tag @s remove RPG.Obj.0017.PlayPlayer