$tellraw @s {"text":"あなたの名前が$(RegistName)として登録されました"}
$data merge storage player: {$(num):{name:$(RegistName)}}