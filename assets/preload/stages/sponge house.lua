function onCreate()
	-- background shit
	makeLuaSprite('sponghouse', 'bk/sponghouse', -930,-800 );
	setScrollFactor('sponghouse', 1, 1);
        scaleObject('sponghouse', 0.8, 0.8);
        addLuaSprite('sponghouse', false);

        makeAnimatedLuaSprite('portaldt','bk/portal', 730,25);
        scaleObject('portaldt', 1.4, 1.4);
        addAnimationByPrefix('portaldt','idle','monika_portals',24,false);
        addLuaSprite('portaldt', false);

        makeAnimatedLuaSprite('sponghouseaniamted','bk/charactersspong', -630,-65);
        addAnimationByPrefix('sponghouseaniamted','idle','housespongecharac',24,false);
        setScrollFactor('sponghouseaniamted', 0.7, 1);

        addLuaSprite('sponghouseaniamted', true);
        scaleObject('sponghouseaniamted', 2, 2);

        makeAnimatedLuaSprite('pibby','survivors/pibby', 930,300);
        addAnimationByPrefix('pibby','idlep','pibby_idle',24,false);
        setProperty('pibby.alpha', 1);
        scaleObject('pibby', 1.2, 1.2);
        addLuaSprite('pibby', false);

        makeAnimatedLuaSprite('sponghouseaniamted3','bk/gary_survivor', 1230,565);
        addAnimationByPrefix('sponghouseaniamted3','idle','gary_pibby',24,false);
        setScrollFactor('sponghouseaniamted3', 1, 1);
        addLuaSprite('sponghouseaniamted3', false);
        scaleObject('sponghouseaniamted3', 1, 1);

	makeLuaSprite('sponghouse2', 'bk/blackthing again', -2030,-800 );
	setScrollFactor('sponghouse2', 0.7, 1);
        scaleObject('sponghouse2', 1.2, 1.2);

        addLuaSprite('sponghouse2', true);


	makeLuaSprite('thelogo', 'nick_logo', 870,520);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', false);



end

