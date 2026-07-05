#> rpg:asset/effect/0001.abstract/tick/_
#
# EffectのTick処理
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/run.m

#> UIデータを作成
    # データがないなら動作終了
    execute unless data storage reizo_mcfunc_engin:context this.IconID run return 0
    # お願いOMD!
    function #oh_my_dat:please
    # アイコンを作成
    function rpg:asset/effect/0001.abstract/tick/set_icon.m with storage reizo_mcfunc_engin:context this
    # データ追加
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Effect append value {data:[{"text":"\uF822",font:"space"},{"text":"icon",font:"icon/effects",shadow_color:0,color:"white"}]}
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Effect[-1].data[-1].text set from storage reizo_mcfunc_engin:context this.Init.UI.Icon
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Effect[-1].Duration set from storage reizo_mcfunc_engin:context Duration