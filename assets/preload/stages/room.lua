function onCreate()
	-- background shit

        makeAnimatedLuaSprite('roomanimated','room/backsroom',-1230,-700)addAnimationByPrefix('roomanimated','dance','asofysaof',24,true)
        objectPlayAnimation('roomanimated','dance',true)
        setScrollFactor('roomanimated', 1, 1);
        setProperty('roomanimated.alpha', 1);
       scaleObject('roomanimated', 14,14);
        addLuaSprite('roomanimated', false);

	makeLuaSprite('roomback1', 'room/room', -1230,-400 );
	setScrollFactor('roomback1', 1, 1);
        scaleObject('roomback1', 2, 2);
        addLuaSprite('roomback1', false);


	makeLuaSprite('roomback2', 'room/table', -530,900 );
	setScrollFactor('roomback2', 1, 1);
        scaleObject('roomback2', 1, 1);
        addLuaSprite('roomback2', true);

end
