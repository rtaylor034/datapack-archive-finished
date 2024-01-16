

#OPEN
function gdeathboxes:box/open/run
execute if data entity @s SelectedItem.tag.deathbox run item replace entity @s weapon.mainhand with air
execute unless data entity @s SelectedItem.tag.deathbox run item replace entity @s weapon.offhand with air
