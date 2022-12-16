function onCreate()
	-- background shit
	makeLuaSprite('schoolback', 'schoolsenpai/schoolback', -2600,-920);
	setScrollFactor('schoolback', 1, 1);
        scaleObject('schoolback', 3, 3);
        addLuaSprite('schoolback', false);
       

        makeAnimatedLuaSprite('chairsfront','schoolsenpai/chairsfront',-2400,510)
        objectPlayAnimation('chairsfront','dance',true)
         addAnimationByPrefix('chairsfront','dance','sillas',24,false)
        setScrollFactor('chairsfront', 1, 1);
         scaleObject('chairsfront', 3, 3);
         addLuaSprite('chairsfront', true);

	makeLuaSprite('messages', 'schoolsenpai/messages', 300, -200);
	setScrollFactor('messages', 1, 1);
      scaleObject('messages', 2.6, 2.6);
       addLuaSprite('messages', false);



        
        
        
       

	
       
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end