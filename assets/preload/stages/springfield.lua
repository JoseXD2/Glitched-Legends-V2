function onCreate()
	-- background shit
	precacheSound('krusty_l');
	makeLuaSprite('springfieldback1', 'springfield/skysback', -1230,-1500 );
	setScrollFactor('springfieldback1', 1, 1);
        scaleObject('springfieldback1', 3, 3);
        addLuaSprite('springfieldback1', false);

	makeLuaSprite('springfieldback2', 'springfield/treesback', -1230,-1500 );
	setScrollFactor('springfieldback2', 0.4, 1);
        scaleObject('springfieldback2', 3, 3);
        addLuaSprite('springfieldback2', false);

	makeLuaSprite('springfieldback3', 'springfield/tabback', -1230,-180 );
	setScrollFactor('springfieldback3', 1, 1);
        scaleObject('springfieldback3', 3, 3);
        addLuaSprite('springfieldback3', false);

	makeLuaSprite('springfieldback4', 'springfield/housefront', -1230,100 );
	setScrollFactor('springfieldback4', 1, 1);
        scaleObject('springfieldback4', 3, 3);
        addLuaSprite('springfieldback4', false);

	makeLuaSprite('springfieldback5', 'springfield/housefront2', -1230,-1120 );
	setScrollFactor('springfieldback5', 1, 1);
        scaleObject('springfieldback5', 3, 3);
        addLuaSprite('springfieldback5', false);

        makeAnimatedLuaSprite('bart','survivors/bart_idle',2170, 270)
        addAnimationByPrefix('bart','dance','bart_idle',24,false)
        addLuaSprite('bart', true);
	scaleObject('bart', 1, 1);

        makeAnimatedLuaSprite('peter','springfield/peter',-870, 470)
        addAnimationByPrefix('peter','dance','peter_idle',24,false)
        addLuaSprite('peter', false);
	scaleObject('peter', 1, 1);

        makeAnimatedLuaSprite('k','springfield/krust_jumpscare',150, 130)
        addAnimationByPrefix('k','dance','krusty_jumpscare',24,false)
        addLuaSprite('k', true);
       setProperty('k.alpha', 0);
	scaleObject('k', 1.7, 1.7);
       setObjectCamera('k', 'other')

	makeLuaSprite('thelogo', 'Fox_logo', 0,560);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', true);
end

function onEvent(name, value1, value2)
	if name == 'cinematic' and value1 == 'a' then
		setProperty('peter.color', '000000')
		setProperty('bart.color', '000000')


end
	if name == 'cinematic' and value1 == 'b' then
		setProperty('peter.color', getColorFromHex('FFFFFF'))
		setProperty('bart.color', getColorFromHex('FFFFFF'))

end
end

function onStepHit()
        if curStep == 1125 then
       setProperty('k.alpha', 1);
playSound('krusty_l', 1)
objectPlayAnimation('k', 'dance', true)
        elseif curStep == 1135 then
doTweenAlpha('kout', 'k', 0, 3, 'linear')
doTweenY('kout2', 'k', 1000, 1, 'linear')
        elseif curStep == 1160 then
removeluasprite('k')
end
end