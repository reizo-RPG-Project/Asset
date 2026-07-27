#> rpg:asset/item/0001.abstract_item/init/lore/effect/foreach
#
# 
#
# @within function rpg:asset/item/0001.abstract_item/init/lore/effect/_

# 登録処理を呼び出す
function reizo_mcfunc_engin:asset/effect/.manager/register/run.m with storage reizo_mcfunc_engin:context this.Effects[0]

# 先頭削除
data remove storage reizo_mcfunc_engin:context this.Effects[0]

# データ追加
data modify storage reizo_mcfunc_engin:context this.EffectLore.hover append from storage reizo_mcfunc_engin:effect Register.Lore

# 説明文を構成する。
    data modify storage reizo_mcfunc_engin:context this.EffectLore.data set value ["",{"text":"+",color:"green",italic:0b},{"text":"\uFFFF",font:"icon/effects",shadow_color:0,color:"white",italic:0b},{"text":"Name",color:"blue",italic:0b}]
    data modify storage reizo_mcfunc_engin:context this.EffectLore.data[-1].text set from storage reizo_mcfunc_engin:effect Register.Name.text
    function rpg:asset/item/0001.abstract_item/init/lore/effect/set_icon.m with storage reizo_mcfunc_engin:effect Field
    data modify storage reizo_mcfunc_engin:context this.EffectLore.data[2].text set from storage reizo_mcfunc_engin:context this.EffectLore.Icon
    # 効果時間を分秒にする。
        function rpg:asset/item/0001.abstract_item/init/lore/effect/set_duration
        data modify storage reizo_mcfunc_engin:context this.EffectLore.data append from storage reizo_mcfunc_engin:context this.EffectLore.Duration

# 説明文を適応する。
data modify entity @s Item.components."minecraft:lore" append from storage reizo_mcfunc_engin:context this.EffectLore.data

# お掃除
    data remove storage reizo_mcfunc_engin:effect Register
    data remove storage reizo_mcfunc_engin:effect Field
    data remove storage reizo_mcfunc_engin:context this.EffectLore

# 残るなら再帰
execute if data storage reizo_mcfunc_engin:context this.Effects[0] run function rpg:asset/item/0001.abstract_item/init/lore/effect/foreach