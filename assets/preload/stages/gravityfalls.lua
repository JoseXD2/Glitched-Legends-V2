function onCreate()
	-- background give credits to dusttoybonnie and Mr fazbear they made the background lol
        makeLuaSprite('fallsback', 'gravity/fallsback', -1900,-720);
	setScrollFactor('fallsback', 0.7, 1);


        makeAnimatedLuaSprite('fallsanimated','gravity/portal_gravity',-720, -400)addAnimationByPrefix('fallsanimated','dance','PORTAL',35,true)
        objectPlayAnimation('fallsanimated','dance',true)
        setScrollFactor('fallsanimated', 1, 1);

        makeAnimatedLuaSprite('fallsanimated2','gravity/gf_pibby',2570, 1700)addAnimationByPrefix('fallsanimated2','dance','gf_pibby',23,true)
        objectPlayAnimation('fallsanimated2','dance',true)
        setScrollFactor('fallsanimated2', 1, 1);

        makeAnimatedLuaSprite('gravityanimated6','gravity/stannford_idle',1570, 1700)addAnimationByPrefix('gravityanimated6','dance','stanford_idle',25,true)
        objectPlayAnimation('gravityanimated6','dance',true)
        setScrollFactor('gravityanimated6', 1, 1);

        makeLuaSprite('fallsfront', 'gravity/fallsfront', -1520, 400);
	setScrollFactor('fallsfront', 1, 1);
	scaleObject('fallsfront', 1, 1);
        makeLuaSprite('fallsfront3', 'gravity/fallsfront3', -2720, -900);
	setScrollFactor('fallsfront3', 0.7, 1);
	scaleObject('fallsfront3', 1, 1);



        addLuaSprite('fallsback', false);
        addLuaSprite('fallsfront', false);
        addLuaSprite('fallsanimated', false);
        addLuaSprite('fallsanimated2', false);
        addLuaSprite('gravityanimated6', true);
        addLuaSprite('fallsfront3', true);


end

