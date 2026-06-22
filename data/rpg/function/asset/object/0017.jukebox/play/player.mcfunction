#> rpg:asset/object/0017.jukebox/play/player
#
# 
#
# @within function rpg:asset/object/0017.jukebox/play/_

# 流す
function rpg:asset/object/0017.jukebox/common/play.m with storage reizo_mcfunc_engin:context this.RecordItem

# お願いOMD!
    function #oh_my_dat:please

# リセット
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record

# UIセット
    # register
    function rpg:asset/object/0017.jukebox/play/get_item_register.m with storage reizo_mcfunc_engin:context this.PlayingRecordData
    # データセット
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text set value ["",{"text":"ID",font:"icon/record","shadow_color":0,color:"white"},{"text":"name"}]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text[-1] set from storage reizo_mcfunc_engin:item Register.Name
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text[-1].font set value "record/font"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text[-2].text set from storage reizo_mcfunc_engin:context this.PlayingRecordData.IconID
    # 文字数によるスペースの追加数
        # 文字数の取得
        execute store result score $StringLen RPG.Temp run data get storage reizo_mcfunc_engin:item Register.Name.text
        # コピー
        scoreboard players operation $NameLen RPG.Temp = $StringLen RPG.Temp
        # 一文字文が6だということが分かっているので6をかける
        scoreboard players operation $NameLen RPG.Temp *= #6 RPG.Const
        # 減算して絞り込む
        function rpg:asset/object/0017.jukebox/play/space_set/_
        # データセット
            data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text append value []
            data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record.Text[-1] set from storage reizo_mcfunc_engin:context this.SetSpace
    # お掃除
    data remove storage reizo_mcfunc_engin:item Register
    data remove storage reizo_mcfunc_engin:context this.SetSpace
    scoreboard players reset $StringLen RPG.Temp
    scoreboard players reset $NameLen

# お掃除
tag @s remove RPG.Obj.0017.PlayPlayer