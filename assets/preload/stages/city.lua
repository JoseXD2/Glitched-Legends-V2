function onCreate()
	-- background shit
	makeLuaSprite('cityback1', 'city/cityback', -1230,-900 );
	setScrollFactor('cityback1', 0.7, 1);
        scaleObject('cityback1', 3, 3);
        addLuaSprite('cityback1', false);

	makeLuaSprite('cityback2', 'city/citaback1', -1230,-400 );
	setScrollFactor('cityback2', 0.9, 1);
        scaleObject('cityback2', 2, 2);
        addLuaSprite('cityback2', false);

	makeLuaSprite('cityback3', 'city/citafront', -1230,-800 );
	setScrollFactor('cityback3', 1, 1);
        scaleObject('cityback3', 2, 2);
        addLuaSprite('cityback3', false);

        makeAnimatedLuaSprite('animatedcity','city/tankman', 1690, 400);
        addAnimationByPrefix('animatedcity','idle','tankman',24,false);
        setProperty('animatedcity.alpha', 1);
        addLuaSprite('animatedcity', true);


        makeAnimatedLuaSprite('animatedcity2','city/nene', 1890, 400);
        addAnimationByPrefix('animatedcity2','idle','nene',24,false);
        setProperty('animatedcity2.alpha', 1);
        addLuaSprite('animatedcity2', true);

        makeAnimatedLuaSprite('animatedcity3','city/darnel_pibby', -580, 400);
        addAnimationByPrefix('animatedcity3','idle','darnel',24,false);
        setProperty('animatedcity3.alpha', 1);
        addLuaSprite('animatedcity3', true);


	makeLuaSprite('cityback4', 'city/lightfront', -680,-700 );
	setScrollFactor('cityback4', 1, 1);

        scaleObject('cityback4', 2, 2);
		setObjectOrder('cityback4', 9999999999)
        addLuaSprite('cityback4', true);


end

function onEvent(name, value1, value2)
	if name == 'cinematic' and value1 == 'a' then
		setProperty('animatedcity.color', '000000')
		setProperty('animatedcity2.color', '000000')
		setProperty('animatedcity3.color', '000000')
		setProperty('cityback4.alpha', 0)

end
	if name == 'cinematic' and value1 == 'b' then
		setProperty('animatedcity.color', getColorFromHex('FFFFFF'))
		setProperty('animatedcity2.color', getColorFromHex('FFFFFF'))
		setProperty('animatedcity3.color', getColorFromHex('FFFFFF'))
		setProperty('cityback4.alpha', 1)

end
end