function onCreate()
	-- background give credits to dusttoybonnie and Mr fazbear they made the background lol

        makeLuaSprite('gravityback', 'gravityback', -1400,-520);
	setScrollFactor('gravityback', 0.7, 1);
        

        makeAnimatedLuaSprite('gravityanimated','bunbun_shadow',-720, -400)addAnimationByPrefix('gravityanimated','dance','bunbun_shadow instancia ',35,true)
        objectPlayAnimation('gravityanimated','dance',true)
        setScrollFactor('gravityanimated', 1, 1);

        makeAnimatedLuaSprite('gravityanimated2','characgravity',1060, 150)addAnimationByPrefix('gravityanimated2','dance','charctfallsf instancia ',35,true)
        objectPlayAnimation('gravityanimated2','dance',true)
        setScrollFactor('gravityanimated2', 0.7, 1);

        makeAnimatedLuaSprite('gravityanimated3','jhonny_bravo',-460, 1150)addAnimationByPrefix('gravityanimated3','dance','characfallsf3 instancia ',25,true)
        objectPlayAnimation('gravityanimated3','dance',true)
        setScrollFactor('gravityanimated3', 0.7, 1);

        makeAnimatedLuaSprite('gravityanimated4','vick_control',1860, 1550)addAnimationByPrefix('gravityanimated4','dance','charactersgravityf2 instancia ',25,true)
        objectPlayAnimation('gravityanimated4','dance',true)
        setScrollFactor('gravityanimated4', 0.7, 1);

        makeAnimatedLuaSprite('gravityanimated5','gravity/gf_pibby',2470, 1700)addAnimationByPrefix('gravityanimated5','dance','gf_pibby instancia ',25,true)
        objectPlayAnimation('gravityanimated5','dance',true)
        setScrollFactor('gravityanimated5', 1, 1);

        makeAnimatedLuaSprite('gravityanimated6','stannford_idle',2770, 1700)addAnimationByPrefix('gravityanimated6','dance','stanford_idle instancia ',25,true)
        objectPlayAnimation('gravityanimated6','dance',true)
        setScrollFactor('gravityanimated6', 1, 1);
       
       
        makeLuaSprite('gravityfront', 'gravityfront', -1520, 400);
	setScrollFactor('gravityfront', 1, 1);
	scaleObject('gravityfront', 1, 1);
       
        makeLuaSprite('gravityfront3', 'fallsfront3', -2720, -900);
	setScrollFactor('gravityfront3', 0.7, 1);
	scaleObject('gravityfront3', 1, 1);

        
        
        addLuaSprite('gravityback', false);
        addLuaSprite('gravityanimated', false);
        addLuaSprite('gravityanimated2', false);
        addLuaSprite('gravityfront', false);
        addLuaSprite('gravityanimated5', false);
        addLuaSprite('gravityanimated6', true);
        addLuaSprite('gravityfront3', true);
        addLuaSprite('gravityanimated3', true);
        addLuaSprite('gravityanimated4', true);
	close(true);
end