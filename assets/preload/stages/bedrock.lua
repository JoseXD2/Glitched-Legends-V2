function onCreate()
	-- background shit
	makeLuaSprite('bedrockback1', 'bedrock/skyback', -1230,-900 );
	setScrollFactor('bedrockback1', 0.7, 1);
        scaleObject('bedrockback1', 3, 3);
        addLuaSprite('bedrockback1', false);

	makeLuaSprite('bedrockback2', 'bedrock/moon', -330,-900 );
	setScrollFactor('bedrockback2', 0.3, 1);
        addLuaSprite('bedrockback2', false);

	makeLuaSprite('bedrockback3', 'bedrock/palm', -730,-900 );
	setScrollFactor('bedrockback3', 0.6, 1);
        addLuaSprite('bedrockback3', false);

        makeAnimatedLuaSprite('charactersbarbera','bedrock/charcbarbera',-180,-70)
        addAnimationByPrefix('charactersbarbera','dance','charactersfred',24,false)
        addLuaSprite('charactersbarbera', false);


        makeLuaSprite('bedrockfront', 'bedrock/wallback', -1080,170);
	setScrollFactor('bedrockfront', 1, 1);
	scaleObject('bedrockfront', 2, 1);
        addLuaSprite('bedrockfront', false);

        makeLuaSprite('bedrockfront2', 'bedrock/rockhouse', 1480,-470);
	setScrollFactor('bedrockfront2', 1, 1);
	scaleObject('bedrockfront2', 1, 1);
        addLuaSprite('bedrockfront2', false);

        makeAnimatedLuaSprite('charactersbarbera2','bedrock/barney_idle',2470, 400)
        addAnimationByPrefix('charactersbarbera2','dance','pablo_idle',24,false)
        addLuaSprite('charactersbarbera2', false);
	scaleObject('charactersbarbera2', 0.8, 0.8);

        makeAnimatedLuaSprite('dino1','bedrock/dino_fall', 130,-885);
        addAnimationByPrefix('dino1','fall','dino_idle',24,false);
        setProperty('dino1.alpha', 0);
        addLuaSprite('dino1', false);

        makeAnimatedLuaSprite('dino','bedrock/dino', 130,25);
        addAnimationByPrefix('dino','idle','dino_idles',24,false);
        setProperty('dino.alpha', 0);
        addLuaSprite('dino', false);


	makeLuaSprite('thelogo', 'tooncast_logo', 920,560);
        scaleObject('thelogo', 1, 1);
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', false);



	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end
