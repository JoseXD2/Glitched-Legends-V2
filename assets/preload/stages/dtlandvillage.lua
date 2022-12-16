function onCreate()
	-- background shit
	makeLuaSprite('villageback1', 'Determinatedland/dtlandback1', -1630,-900 );
	setScrollFactor('villageback1', 0.4, 1);
        scaleObject('villageback1', 4, 4);
        addLuaSprite('villageback1', false);

	makeLuaSprite('villageback2', 'Determinatedland/dtlandfront', -1630,-500 );
	setScrollFactor('villageback2', 1, 1);
        scaleObject('villageback2', 3.5, 3.3);
        addLuaSprite('villageback2', false);

	makeLuaSprite('villageback3', 'Determinatedland/dtlandfront2', 2230,-500 );
	setScrollFactor('villageback3', 0.7, 1);
        scaleObject('villageback3', 3, 3);
        addLuaSprite('villageback3', true);

	makeLuaSprite('villageback4', 'Determinatedland/torchfront', -1830,200 );
	setScrollFactor('villageback4', 0.7, 1);
        scaleObject('villageback4', 2, 2);
        addLuaSprite('villageback4', true);






	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end
