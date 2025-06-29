$data modify storage dialog: RegistName set value $(name)
execute store result storage dialog: num int 1 run experience query @s levels
function core:regist_name with storage dialog: