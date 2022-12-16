function onCreate()
	-- background shit
	makeLuaSprite('wowback', 'justback', -830,900 );
	setScrollFactor('wowback', 1, 1);
        
        makeLuaSprite('wowfront', 'justfront', -480,-270);
	setScrollFactor('wowfront', 1, 1);
	scaleObject('wowfront', 1, 1);
        

        addLuaSprite('wowfront', true);
	
       
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end