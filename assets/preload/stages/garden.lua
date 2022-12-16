function onCreate()
	-- background shit
	makeLuaSprite('gardenback1', 'garden/sky', -1930,-1800 );
	setScrollFactor('gardenback1', 0.7, 1);
        scaleObject('gardenback1', 4, 4);
        addLuaSprite('gardenback1', false);

        makeAnimatedLuaSprite('gardenanimated','garden/backkkwow', -230,-700);
        addAnimationByPrefix('gardenanimated','idle','afafa',24,false);
        scaleObject('gardenanimated', 3, 3);
        setProperty('gardenanimated.alpha', 1);
        addLuaSprite('gardenanimated', false);


        makeAnimatedLuaSprite('gardenanimated0','garden/zombot_idle', 330,-600);
        addAnimationByPrefix('gardenanimated0','idle','cuerpoxdxd',24,false);
        scaleObject('gardenanimated0', 2, 2);
        setProperty('gardenanimated0.alpha', 1);
        addLuaSprite('gardenanimated0', false);


	makeLuaSprite('gardenback2', 'garden/platform', -1830,200 );
	setScrollFactor('gardenback2', 1, 1);
        scaleObject('gardenback2', 2.4, 2.6);
        addLuaSprite('gardenback2', false);

        makeAnimatedLuaSprite('gardenanimated4','garden/chuck_survivor', 2270, 450);
        addAnimationByPrefix('gardenanimated4','idle','chuck',24,false);
        scaleObject('gardenanimated4', 1, 1);
        setProperty('gardenanimated4.x', 5000);
        setProperty('gardenanimated4.alpha', 1);
        addLuaSprite('gardenanimated4', false);

        makeAnimatedLuaSprite('gardenanimated3','garden/sunflower_survivor', 2570, 450);
        addAnimationByPrefix('gardenanimated3','idle','sunflower',24,false);
        scaleObject('gardenanimated3', 1, 1);
        setProperty('gardenanimated3.alpha', 0);
        addLuaSprite('gardenanimated3', false);

	makeAnimatedLuaSprite('uglyHB','pvzbar',0,0)addAnimationByPrefix('uglyHB','dance','aihfhfa instancia ',25,true)
        objectPlayAnimation('uglyHB','dance',true)
	setObjectCamera('uglyHB', 'hud')
	setScrollFactor('uglyHB', 0.9, 0.9)
	
	addLuaSprite('uglyHB', true)

if not downscroll then
        makeAnimatedLuaSprite('gardenanimated5','garden/mechanic stuff/zombie', 800,900);
        addAnimationByPrefix('gardenanimated5','eating','zombie_eating instancia 1',24,true);
        setObjectCamera('gardenanimated5', 'hud')
        scaleObject('gardenanimated5', 1, 1);
        setObjectOrder('gardenanimated5', 99)
        setProperty('gardenanimated5.alpha', 1);
        addLuaSprite('gardenanimated5', false);
end
if downscroll then
        makeAnimatedLuaSprite('gardenanimated5','garden/mechanic stuff/zombie', 800,-450);
        addAnimationByPrefix('gardenanimated5','eating','zombie_eating instancia 1',24,true);
	setProperty('gardenanimated5.flipX', true)
        setObjectCamera('gardenanimated5', 'hud')
        scaleObject('gardenanimated5', 1, 1);
        setProperty('gardenanimated5.angle', 180)
        setObjectOrder('gardenanimated5', 99)
        setProperty('gardenanimated5.alpha', 1);
        addLuaSprite('gardenanimated5', false);
end
end

function onStepHit()
	if curStep == 466 then
        setProperty('gardenanimated3.alpha', 1);
	elseif curStep == 526 then
	doTweenX('ff', 'gardenanimated4', 2270, 1, 'linear');
if downscroll then
	doTweenY('ffc', 'gardenanimated5', -50, 1, 'linear');
end
if not downscroll then
	doTweenY('ffc', 'gardenanimated5', 350, 1, 'linear');
end
end
end


function onCreatePost()
	--Fucker's Healthbar
    setProperty('uglyHB.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))

    setProperty('uglyHB.x', getProperty('healthBar.x') -30)

    setProperty('uglyHB.angle', getProperty('healthBar.angle'))
    setProperty('uglyHB.y', getProperty('healthBar.y')  - 65)
    setProperty('uglyHB.scale.x', getProperty('healthBar.scale.x'))
    setProperty('uglyHB.scale.y', getProperty('healthBar.scale.y'))
    setObjectOrder('uglyHB', 4)
	setObjectOrder('healthBar', 3)
	setObjectOrder('healthBarBG', 2)
end