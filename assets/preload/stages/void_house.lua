function onCreate()

	makeLuaSprite('voidback', 'void_house/gumball_house', -600,-920);
        setProperty('voidback.alpha', 1)
	setScrollFactor('voidback', 1, 1);
       
        makeAnimatedLuaSprite('voidanimated','void_house/static_void',-1700,-920)addAnimationByPrefix('voidanimated','dance','static_font',25,true)
        setProperty('voidanimated.alpha', 1)
        objectPlayAnimation('voidanimated','dance',true)
        setScrollFactor('voidanimated', 1, 1);
        scaleObject('voidanimated', 8, 8);

        makeAnimatedLuaSprite('voidanimated2','void_house/character_gum',-1260,-1180)
        setProperty('voidanimated2.alpha', 1)
        objectPlayAnimation('voidanimated2','dance',true)
        setScrollFactor('voidanimated2', 1, 1);
        addAnimationByPrefix('voidanimated2','dance','manos',24,false)
        scaleObject('voidanimated2', 2.1, 2.1);

        makeAnimatedLuaSprite('voidanimated3','void_house/chrvoid1',-460,-30)
        setProperty('voidanimated3.alpha', 1)
        objectPlayAnimation('voidanimated3','dance',true)
        addAnimationByPrefix('voidanimated3','dance','personajes',24,false)
        setScrollFactor('voidanimated3',0.4, 0.4);


        makeAnimatedLuaSprite('voidanimated4','void_house/chrvoid2',1560,-30)
        setProperty('voidanimated4.alpha', 1)
        objectPlayAnimation('voidanimated4','dance',true)
        addAnimationByPrefix('voidanimated4','dance','charcter2',24,false)
        setScrollFactor('voidanimated4', 0.4, 0.4);

        makeAnimatedLuaSprite('voidanimated5','void_house/darwin_idle',1470, 400)
        setProperty('voidanimated5.alpha', 1)
        objectPlayAnimation('voidanimated5','dance',true)
        setScrollFactor('voidanimated5', 1, 1);
        addAnimationByPrefix('voidanimated5','dance','darwin',24,false)
        scaleObject('voidanimated5', 0.7, 0.7);

	makeLuaSprite('thelogo', 'CN_logo', 920,560);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')

        addLuaSprite('voidanimated', false); 
        addLuaSprite('voidanimated3', false); 
        addLuaSprite('voidanimated4', false);    
        addLuaSprite('voidback', false);
        addLuaSprite('voidanimated5', true); 
        addLuaSprite('voidanimated2', true); 
        addLuaSprite('thelogo', false);


	if songName == 'mydoll' then

        setProperty('voidanimated4.alpha', 1)

        setProperty('voidanimated3.alpha', 1)
        setProperty('voidanimated.alpha', 1)
        setProperty('voidback.alpha', 1)
        setProperty('thelogo.alpha', 1)
        setProperty('voidanimated2.alpha', 0)
end
end
function onGameOver()
	loadSong(songName, difficulty)
end
