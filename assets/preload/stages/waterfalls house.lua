function onCreate()
	-- background shit
	makeLuaSprite('waterback1', 'determinatedland/waterfallshouseback', -730,-600 );
	setScrollFactor('waterback1', 1, 1);
        scaleObject('waterback1', 2.5, 2.3);
        addLuaSprite('waterback1', false);
        setProperty('waterback1.alpha', 1);


	makeLuaSprite('darkfrontspecial', 'darkroom/darkthingwhynot', -50,0 );
	setScrollFactor('darkfrontspecial', 0.7, 1);
        scaleObject('darkfrontspecial', 2.1, 1.8);
        addLuaSprite('darkfrontspecial', true);
        setObjectCamera('darkfrontspecial', 'other')

end
