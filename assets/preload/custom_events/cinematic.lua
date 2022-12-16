--this is an update for the fucking White bg because the old one is shit.made by letter D
function onCreate()
		makeLuaSprite('WBG', nil, -1900, -1200)
		makeGraphic('WBG',5000,3000,'ffffff')
		addLuaSprite('WBG', false)
scaleObject('WBG', 5, 5);
	setProperty('WBG.alpha',0)

end
function onEvent(name,value1,value2)
if name == 'cinematic' then 

if value1 == 'a' then
    doTweenColor('boyfriend', 'boyfriend', '000000', 1, 'linear');
    doTweenColor('gf', 'gf', '000000', 0.001, 'linear');
    doTweenColor('dad', 'dad', '000000', 0.001, 'linear');

	setProperty('WBG.alpha',1)


end
if value1 == 'b' then
    doTweenColor('boyfriend', 'boyfriend', 'ffffff', 0.00001, 'linear');
    doTweenColor('gf', 'gf', 'ffffff', 0.000001, 'linear');
    doTweenColor('dad', 'dad', 'ffffff', 0.000001, 'linear');

	setProperty('WBG.alpha',0)

end
end
end