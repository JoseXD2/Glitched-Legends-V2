function onCreate()
	-- background shit
	makeLuaSprite('jumpcityback1', 'titan_tower/night_city', -1230,-900 );
	setScrollFactor('jumpcityback1', 0.7, 1);
        scaleObject('jumpcityback1', 1, 1);
        addLuaSprite('jumpcityback1', false);

        makeAnimatedLuaSprite('fires2','titan_tower/fire_tower', 830,-180 );
        addAnimationByPrefix('fires2','firett','firett',24,false);
        setProperty('fires2.alpha', 1);
        setScrollFactor('fires2', 0.7, 1);
        scaleObject('fires2', 1, 1);
        addLuaSprite('fires2', false);

	makeLuaSprite('jumpcityback2', 'titan_tower/city_night', -1230,600 );
	setScrollFactor('jumpcityback2', 0.7, 1);
        scaleObject('jumpcityback2', 1, 1);
        addLuaSprite('jumpcityback2', false);

	makeLuaSprite('jumpcityback3', 'titan_tower/ded_tower', 830,-100 );
	setScrollFactor('jumpcityback3', 0.7, 1);
        scaleObject('jumpcityback3', 1, 1);
        addLuaSprite('jumpcityback3', false);

	makeLuaSprite('jumpcityback4', 'titan_tower/night_rock', -930,300 );
	setScrollFactor('jumpcityback4', 0.7, 1);
        scaleObject('jumpcityback4', 1, 1);
        addLuaSprite('jumpcityback4', false);

	makeLuaSprite('jumpcityback5', 'titan_tower/night_rocks', -1230,1100 );
	setScrollFactor('jumpcityback5', 1, 1);
        scaleObject('jumpcityback5', 1, 1);
        addLuaSprite('jumpcityback5', false);

        makeAnimatedLuaSprite('titanraven','titan_tower/raven_idle', 930,200);
        addAnimationByPrefix('titanraven','idle','characrobin',24,false);
        setProperty('titanraven.alpha', 1);
        scaleObject('titanraven', 0.7, 0.7);
        addLuaSprite('titanraven', false);

        makeAnimatedLuaSprite('titanstar','titan_tower/starfire_idle', 530,200);
        addAnimationByPrefix('titanstar','idle','star_idle',24,false);
        setProperty('titanstar.alpha', 1);
        scaleObject('titanstar', 0.7, 0.7);
        addLuaSprite('titanstar', false);

        makeAnimatedLuaSprite('titanbeast','titan_tower/beastboy_idle', -530,800);
        addAnimationByPrefix('titanbeast','idleb','beastboy_alt_idle',24,false);
        setProperty('titanbeast.alpha', 1);
        scaleObject('titanbeast', 0.7, 0.7);
        addLuaSprite('titanbeast', false);

        makeAnimatedLuaSprite('pibby','survivors/pibby', 1830,900);
        addAnimationByPrefix('pibby','idlep','pibby_idle',24,false);
        setProperty('pibby.alpha', 1);
        scaleObject('pibby', 1.2, 1.2);
        addLuaSprite('pibby', false);

        makeAnimatedLuaSprite('titancyborg','titan_tower/cyborg_head', 2330,1000);
        addAnimationByPrefix('titancyborg','idlecy','cybotg_head_idle',24,false);
        setProperty('titancyborg.alpha', 1);
        scaleObject('titancyborg', 0.9, 0.9);
        addLuaSprite('titancyborg', false);

        makeAnimatedLuaSprite('batman','survivors/batman', 2530,600);
        addAnimationByPrefix('batman','idlebat','batman_idle',24,false);
        setProperty('batman.alpha', 1);
        scaleObject('batman', 0.9, 0.9);
        addLuaSprite('batman', false);


        makeAnimatedLuaSprite('justice','titan_tower/justice_league', 1030,100);
        addAnimationByPrefix('justice','idleleague','superman_pibby',24,false);
        setProperty('justice.alpha', 1);
        setScrollFactor('justice', 0.7, 1);
        scaleObject('justice', 0.9, 0.9);
        addLuaSprite('justice', false);






	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end
