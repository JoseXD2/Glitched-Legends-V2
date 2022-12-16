function onCreate()
	-- background shit
	makeLuaSprite('jumpcityback1', 'titan_tower/skkyback', -1230,-900 );
	setScrollFactor('jumpcityback1', 0.7, 1);
        scaleObject('jumpcityback1', 1, 1);
        addLuaSprite('jumpcityback1', false);

	makeLuaSprite('jumpcityback1s', 'titan_tower/superman1',  -1530,200);
        setProperty('jumpcityback1s.velocity.x', getRandomInt(1, 64));
	setScrollFactor('jumpcityback1s', 0.7, 1);
        scaleObject('jumpcityback1s', 1, 1);
        addLuaSprite('jumpcityback1s', false);

	makeLuaSprite('jumpcityback1p', 'titan_tower/plane',  -1530,200 );
	setScrollFactor('jumpcityback1p', 0.7, 1);
        setProperty('jumpcityback1p.velocity.x', getRandomInt(1, 65));
        scaleObject('jumpcityback1p', 1, 1);
        addLuaSprite('jumpcityback1p', false);

        makeAnimatedLuaSprite('fires','titan_tower/fire', 830,780 );
        addAnimationByPrefix('fires','introfire','fire',24,false);
        setProperty('fires.alpha', 0);
        scaleObject('fires', 1, 1);
        addLuaSprite('fires', false);

	makeLuaSprite('jumpcityback2', 'titan_tower/city2', -1230,600 );
	setScrollFactor('jumpcityback2', 0.7, 1);
        scaleObject('jumpcityback2', 1, 1);
        addLuaSprite('jumpcityback2', false);

	makeLuaSprite('jumpcityback3', 'titan_tower/ttower2', 830,-400 );
	setScrollFactor('jumpcityback3', 0.7, 1);
        scaleObject('jumpcityback3', 1, 1);
        addLuaSprite('jumpcityback3', false);

	makeLuaSprite('jumpcityback4', 'titan_tower/2', -930,300 );
	setScrollFactor('jumpcityback4', 0.7, 1);
        scaleObject('jumpcityback4', 1, 1);
        addLuaSprite('jumpcityback4', false);

	makeLuaSprite('jumpcityback5', 'titan_tower/plat2', -1230,1100 );
	setScrollFactor('jumpcityback5', 1, 1);
        scaleObject('jumpcityback5', 1, 1);
        addLuaSprite('jumpcityback5', false);

        makeAnimatedLuaSprite('titanportal','titan_tower/portal', 530,200);
        addAnimationByPrefix('titanportal','portal','portalraven',24,false);
        setProperty('titanportal.alpha', 0);
        addLuaSprite('titanportal', false);

        makeAnimatedLuaSprite('titanraven','titan_tower/raven_idle', 930,200);
        addAnimationByPrefix('titanraven','idle','characrobin',24,false);
        setProperty('titanraven.alpha', 0);
        scaleObject('titanraven', 0.7, 0.7);
        addLuaSprite('titanraven', false);
   
        makeAnimatedLuaSprite('titanf','titan_tower/star_intro', -130,300);
        addAnimationByPrefix('titanf','introf','intro_star',24,false);
        setProperty('titanf.alpha', 0);
        scaleObject('titanf', 0.7, 0.7);
        addLuaSprite('titanf', false);

        makeAnimatedLuaSprite('titanstar','titan_tower/starfire_idle', 530,200);
        addAnimationByPrefix('titanstar','idle','star_idle',24,false);
        setProperty('titanstar.alpha', 0);
        scaleObject('titanstar', 0.7, 0.7);
        addLuaSprite('titanstar', false);

        makeAnimatedLuaSprite('titanbeastintro','titan_tower/intro_beast', -330,-700);
        addAnimationByPrefix('titanbeastintro','introb','beastboy_appear',24,false);
        setProperty('titanbeastintro.alpha', 0);
        scaleObject('titanbeastintro', 1.1, 1.1);
        addLuaSprite('titanbeastintro', false);

        makeAnimatedLuaSprite('titanbeast','titan_tower/beastboy_idle', -530,800);
        addAnimationByPrefix('titanbeast','idleb','beastboy_alt_idle',24,false);
        setProperty('titanbeast.alpha', 0);
        scaleObject('titanbeast', 0.7, 0.7);
        addLuaSprite('titanbeast', false);

        makeAnimatedLuaSprite('titancyintro','titan_tower/intro_cyborg', 2030,600);
        addAnimationByPrefix('titancyintro','introc','cyborg_intro',24,false);
        setProperty('titancyintro.alpha', 0);
        scaleObject('titancyintro', 1, 1);
        addLuaSprite('titancyintro', false);

        makeAnimatedLuaSprite('pibby','survivors/pibby', 1830,900);
        addAnimationByPrefix('pibby','idlep','pibby_idle',24,false);
        setProperty('pibby.alpha', 1);
        scaleObject('pibby', 1.2, 1.2);
        addLuaSprite('pibby', false);


        makeAnimatedLuaSprite('titancyborg','titan_tower/idle_cyborg', 2330,600);
        addAnimationByPrefix('titancyborg','idlecy','cyborg_idle',24,false);
        setProperty('titancyborg.alpha', 0);
        scaleObject('titancyborg', 1, 1);
        addLuaSprite('titancyborg', false);


end
