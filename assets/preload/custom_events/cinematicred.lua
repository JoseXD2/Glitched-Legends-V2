function onEvent(name, value1, value2)
	if name == 'cinematicred' and value1 == 'a' then
		makeLuaSprite('whitebg', '', -1500, -300)
                scaleObject('whitebg', 8, 8);
		makeGraphic('whitebg',5000,5000,'FF0000')
		addLuaSprite('whitebg', false)
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')
	end
	if name == 'cinematicred' and value1 == 'b' then
		removeLuaSprite('whitebg')
		setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
		setProperty('dad.color', getColorFromHex('FFFFFF'))
		setProperty('gf.color', getColorFromHex('FFFFFF'))
	end
end