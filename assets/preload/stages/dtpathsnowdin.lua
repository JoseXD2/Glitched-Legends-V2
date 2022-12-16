function onCreate()
	-- background shit
	makeLuaSprite('snowback1', 'Determinatedland/snowback1', -1230,-900 );
	setScrollFactor('snowback1', 1, 1);
        scaleObject('snowback1', 3, 3);
        addLuaSprite('snowback1', false);

	makeLuaSprite('snowback2', 'Determinatedland/snowdinback2', -1230,-900 );
	setScrollFactor('snowback2', 1, 1);
        scaleObject('snowback2', 3, 3);
        addLuaSprite('snowback2', false);


	makeLuaSprite('snowback3', 'Determinatedland/snowdindront2', -1230,500 );
	setScrollFactor('snowback3', 0.8, 1);
        scaleObject('snowback3', 3, 3);
        addLuaSprite('snowback3', false);

	makeLuaSprite('snowback4', 'Determinatedland/snowdinfront', -1230,1100 );
	setScrollFactor('snowback4', 0.7, 1);
        scaleObject('snowback4', 3, 3);
        addLuaSprite('snowback4', false);

        makeAnimatedLuaSprite('snowanimated','Determinatedland/flowey', 2070, 700);
        addAnimationByPrefix('snowanimated','idle','idleflowey',24,false);
        addLuaSprite('snowanimated', true);


        makeAnimatedLuaSprite('voidanimated','void_house/static_void',-100,-100)addAnimationByPrefix('voidanimated','dance','static_font',25,true)
        setProperty('voidanimated.alpha', 0)
	setObjectCamera('voidanimated', 'hud')

        scaleObject('voidanimated', 1.5, 1.5);
		addLuaSprite('voidanimated', true)

end

function onStepHit()
if curStep == 1 then
        objectPlayAnimation('voidanimated','dance',true)
doTweenAlpha('dd', 'voidanimated', 0.7, 1.5, 'quadInOut')
doTweenAlpha('uu2', 'animatedbficon', 0, 1, 'linear')
doTweenAlpha('uu', 'animatedicon', 0, 1, 'linear')
elseif curStep == 11 then
runTimer('shes', 0.1, 3)
elseif curStep == 16 then
doTweenAlpha('uu2', 'animatedbficon', 1, 0.01, 'linear')
doTweenAlpha('ui7', 'animatedicon', 1, 0.01, 'linear')
doTweenAlpha('dpqjd', 'voidanimated', 1, 1, 'quadInOut')
setProperty('voidanimated.visible', false)
setProperty('voidanimated.alpha', 0)

end
end

function onTimerCompleted(tag)
if tag == 'shes' then
doTweenAlpha('uu2', 'camHud', 0, 0.1, 'linear')
doTweenAlpha('uu', 'camGame', 0, 0.1, 'linear')
doTweenAlpha('d', 'voidanimated', 0, 0.1, 'quadInOut')

end
end

function onTweenCompleted(tag)
if tag == 'uu' then
doTweenAlpha('u', 'camHud', 1, 0.1, 'linear')
doTweenAlpha('u2', 'camGame', 1, 0.1, 'linear')
doTweenAlpha('d', 'voidanimated', 0.7, 0.1, 'quadInOut')

end
end