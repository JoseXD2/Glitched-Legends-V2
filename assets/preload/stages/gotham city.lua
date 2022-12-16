function onCreate()
	-- background shit
	makeLuaSprite('gothamback1', 'gotham/backred', -930,-400 );
	setScrollFactor('gothamback1', 0.7, 1);
        scaleObject('gothamback1', 2, 2);
        addLuaSprite('gothamback1', false);

	makeLuaSprite('gothamback2', 'gotham/backblack', -1230,500 );
	setScrollFactor('gothamback2', 1, 1);
        scaleObject('gothamback2', 2.9, 4);
        addLuaSprite('gothamback2', false);


	makeLuaSprite('gothamback32', 'gotham/23', -1230,-500 );
	setScrollFactor('gothamback32', 1, 1);
        scaleObject('gothamback32', 3.9, 2);
        addLuaSprite('gothamback32', false);
        setProperty('gothamback32.alpha', 0);

	makeLuaSprite('gothamback3', 'gotham/3', -530,-200 );
	setScrollFactor('gothamback3', 0.7, 0.7);
        scaleObject('gothamback3', 2, 3);
        addLuaSprite('gothamback3', false);
        setProperty('gothamback3.alpha', 0);

	makeLuaSprite('gothamback4', 'gotham/city', -830,-200 );
	setScrollFactor('gothamback4', 1, 1);
        scaleObject('gothamback4', 2.9, 2);
        addLuaSprite('gothamback4', false);
        setProperty('gothamback4.alpha', 0);

        makeAnimatedLuaSprite('gothamanimated','gotham/smoke',-1570, 200)
        addAnimationByPrefix('gothamanimated','dance','payfpsfuao',24,false)
        addLuaSprite('gothamanimated', false);
	scaleObject('gothamanimated', 3.9, 2);
        setProperty('gothamanimated.alpha', 0);

	makeLuaSprite('gothamback5', 'gotham/f', -1230,700 );
	setScrollFactor('gothamback5', 1, 1);
        scaleObject('gothamback5', 3.8, 2);
        addLuaSprite('gothamback5', false);
        setProperty('gothamback5.alpha', 0);

	makeLuaSprite('thelogo', 'foxkids_logo', 0,540);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', true);

end
