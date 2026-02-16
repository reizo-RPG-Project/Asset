#> rpg:asset/item/0028.exp_wand/is_clicked/_
#
# 
#
# @within function rpg:asset/item/0028.exp_wand/register

# 音
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.3 2

# 親メソッド呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"is_clicked/_"}