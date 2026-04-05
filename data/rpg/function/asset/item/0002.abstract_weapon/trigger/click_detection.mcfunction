#> rpg:asset/item/0002.abstract_weapon/trigger/click_detection
#
# 
#
# @within advancement rpg:asset/item/0002/click_detection

# 0002を保持していなければ動作を終了
execute unless predicate rpg:asset/item/0002/is_hold run return run advancement revoke @s only rpg:asset/item/0002/click_detection

# Tag付け
tag @s add RPG.Input.IsClicked