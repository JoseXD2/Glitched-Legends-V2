function onCreate()
	-- background shit
	makeLuaSprite('hillsback1', 'greenhills/hillsback', -1530,-1800 );
	setScrollFactor('hillsback1', 0.7, 1);
        scaleObject('hillsback1', 3, 3);
        addLuaSprite('hillsback1', false);

	makeLuaSprite('hillsback2', 'greenhills/hillsback3', -1230,-900 );
	setScrollFactor('hillsback2', 0.6, 0.7);
        scaleObject('hillsback2', 2, 2);
        addLuaSprite('hillsback2', false);

	makeLuaSprite('hillsback3', 'greenhills/hillsback2', -1930,-900 );
	setScrollFactor('hillsback3', 0.9, 1);
        scaleObject('hillsback3', 2.9, 2);
        addLuaSprite('hillsback3', false);

        makeAnimatedLuaSprite('hillsanimated','greenhills/wateranimatedcuzyes', -1730,25);
        addAnimationByPrefix('hillsanimated','idle','safhasilkfh',15,false);
	setScrollFactor('hillsanimated', 0.9, 0.9)
        scaleObject('hillsanimated', 2.9, 2);
        addLuaSprite('hillsanimated', false);


        makeAnimatedLuaSprite('hillsanimated2','greenhills/waterfall', -430,-525);
        addAnimationByPrefix('hillsanimated2','idle','watera',15,false);
	setScrollFactor('hillsanimated2', 0.9, 0.9)
        setProperty('hillsanimated2.alpha', 1);
        scaleObject('hillsanimated2', 2, 2);
        addLuaSprite('hillsanimated2', false);

	makeLuaSprite('hillsback4', 'greenhills/hillsfront2', -1930,400 );
	setScrollFactor('hillsback4', 0.9, 1);
        scaleObject('hillsback4', 2.9, 2.5);
        addLuaSprite('hillsback4', false);

	makeLuaSprite('hillsback6', 'greenhills/hillsfront3', -1930,600 );
	setScrollFactor('hillsback6', 1, 1);
        scaleObject('hillsback6', 2.9, 2.7);
        addLuaSprite('hillsback6', false);

        makeAnimatedLuaSprite('hillsanimated3','greenhills/sonic_survivor', 1570, 400);
        addAnimationByPrefix('hillsanimated3','idle','sonic',24,false);
	setScrollFactor('hillsanimated3', 1, 1)
        setProperty('hillsanimated3.alpha', 1);
        scaleObject('hillsanimated3', 1, 1);
        addLuaSprite('hillsanimated3', true);

        makeAnimatedLuaSprite('hillsanimated4','greenhills/eggmanmovil', 1570, -300);
        addAnimationByPrefix('hillsanimated4','idle','eggmanmovil',24,false);
	setScrollFactor('hillsanimated4', 1, 1)
        setProperty('hillsanimated4.alpha', 1);
        scaleObject('hillsanimated4', 1.5, 1.5);
        addLuaSprite('hillsanimated4', true);

	makeLuaSprite('hillsback5', 'greenhills/palm', -1830,-1300 );
	setScrollFactor('hillsback5', 0.7, 1);
        scaleObject('hillsback5', 2, 2);
        addLuaSprite('hillsback5', true);


end

function onUpdate(elapsed)

		local currentBeat = (getSongPosition()/1000)*(bpm/80)
                doTweenY(TweenY, 'hillsanimated4', -300-55*math.sin((currentBeat*0.5)*math.pi),0.01)
end