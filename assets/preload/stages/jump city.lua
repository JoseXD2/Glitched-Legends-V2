function onCreate()
	-- background shit
	makeLuaSprite('jumpcityback1', 'titan_tower/night_city', -1230,-900 );
	setScrollFactor('jumpcityback1', 0.7, 1);

        scaleObject('jumpcityback1', 1, 1);
        addLuaSprite('jumpcityback1', false);

        makeAnimatedLuaSprite('fi','titan_tower/fire', 400 , 550);
        addAnimationByPrefix('fi','fi','fi',24,true);
        setScrollFactor('fi', 0.7, 1);
        doTweenColor('f', 'fi', 'FFA800', 0.01, 'linear')
        scaleObject('fi', 1, 1);
        addLuaSprite('fi', false);

        makeAnimatedLuaSprite('fires2','titan_tower/fire_tower', 830,-180 );
        addAnimationByPrefix('fires2','firett','firett',24,true);
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
        scaleObject('titanraven', 1, 1);
        addLuaSprite('titanraven', false);

        makeAnimatedLuaSprite('titanstar','titan_tower/starfire', 530,200);
        addAnimationByPrefix('titanstar','idle','star_idle',24,false);
        setProperty('titanstar.alpha', 1);
        scaleObject('titanstar', 1, 1);
        addLuaSprite('titanstar', false);

        makeAnimatedLuaSprite('titanbeast','titan_tower/beastboy', -530,800);
        addAnimationByPrefix('titanbeast','idleb','beastboy_alt_idle',24,false);
        setProperty('titanbeast.alpha', 1);
        scaleObject('titanbeast', 1, 1);
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

	makeLuaSprite('thelogo', 'CN_logo', 920,560);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', false);
if songName == 'bossy' then
	makeLuaSprite('jumpcityback1', 'titan_tower/skybackk', -1230,-900 );
	setScrollFactor('jumpcityback1', 0.7, 1);
        scaleObject('jumpcityback1', 1, 1);
        addLuaSprite('jumpcityback1', false);

	makeLuaSprite('jumpcityback2', 'titan_tower/seaback', -1230,600 );
	setScrollFactor('jumpcityback2', 0.7, 1);
        scaleObject('jumpcityback2', 1, 1);
        addLuaSprite('jumpcityback2', false);

	makeLuaSprite('jumpcityback3', 'titan_tower/tower_titan', 830,-400 );
	setScrollFactor('jumpcityback3', 0.7, 1);
        scaleObject('jumpcityback3', 1, 1);
        addLuaSprite('jumpcityback3', false);

	makeLuaSprite('jumpcityback4', 'titan_tower/rock2', -930,300 );
	setScrollFactor('jumpcityback4', 0.7, 1);
        scaleObject('jumpcityback4', 1, 1);
        addLuaSprite('jumpcityback4', false);

	makeLuaSprite('jumpcityback5', 'titan_tower/rocks', -1230,1100 );
	setScrollFactor('jumpcityback5', 1, 1);
        scaleObject('jumpcityback5', 1, 1);
        addLuaSprite('jumpcityback5', false);

        makeAnimatedLuaSprite('jumpcityback6','titan_tower/sun',-930,-700)
        addAnimationByPrefix('jumpcityback6','dance','soll',24,true)
        addLuaSprite('jumpcityback6', false);
        objectPlayAnimation('jumpcityback6','dance',true)
        setScrollFactor('jumpcityback6', 1, 1);
	scaleObject('jumpcityback6', 1, 1);

        makeAnimatedLuaSprite('dino1','bedrock/dino_fall', 130,-885);
        addAnimationByPrefix('dino1','fall','dino_idle',24,false);
        setProperty('dino1.alpha', 0);
        addLuaSprite('dino1', false);

        makeAnimatedLuaSprite('dino','bedrock/dino', 130,25);
        addAnimationByPrefix('dino','idle','dino_idles',24,false);
        setProperty('dino.alpha', 0);
        addLuaSprite('dino', false);

	makeLuaSprite('thelogo', 'CN_logo', 920,560);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', false);


elseif songName == 'leader' then
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

        makeAnimatedLuaSprite('jumpcityback1f','titan_tower/planeF', 3000,100);
setProperty('jumpcityback1f.flipX', true)
        addAnimationByPrefix('jumpcityback1f','fi','planonfire',24,true);
    objectPlayAnimation('jumpcityback1f', 'fi', true)
	setScrollFactor('jumpcityback1f', 0.7, 1);
        scaleObject('jumpcityback1f', 0.3, 0.3);
        addLuaSprite('jumpcityback1f', false);

        makeAnimatedLuaSprite('fires','titan_tower/fire', 830,780 );
        addAnimationByPrefix('fires','introfire','fire',24,true);
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

        makeAnimatedLuaSprite('titanportal','titan_tower/portal', 950,200);
        addAnimationByPrefix('titanportal','portal','portalraven',24,true);
setProperty('titanportal.scale.y', 0)
setProperty('titanportal.scale.x', 0)
        addLuaSprite('titanportal', false);

        makeAnimatedLuaSprite('titanraven','titan_tower/raven_idle', 930,100);
        addAnimationByPrefix('titanraven','idle','characrobin',24,false);
        setProperty('titanraven.alpha', 0);
setProperty('titanraven.scale.y', 0)
setProperty('titanraven.scale.x', 0)
        addLuaSprite('titanraven', false);

        makeAnimatedLuaSprite('titanstar','titan_tower/starfire', 530,200);
        addAnimationByPrefix('titanstar','idle','star_idle',24,false);
        addAnimationByPrefix('titanstar','intro','intro_star',24,false);
        setProperty('titanstar.alpha', 0);
        scaleObject('titanstar', 1, 1);
        addLuaSprite('titanstar', false);

        makeAnimatedLuaSprite('titanbeast','titan_tower/beastboy', -530,-300);
        addAnimationByPrefix('titanbeast','idleb','beastboy_alt_idle',24,false);
        addAnimationByPrefix('titanbeast','intrb','beastboy_appear',24,false);
        setProperty('titanbeast.alpha', 0);
        scaleObject('titanbeast', 1, 1);
        addLuaSprite('titanbeast', false);

        makeAnimatedLuaSprite('pibby','survivors/pibby', 1830,900);
        addAnimationByPrefix('pibby','idlep','pibby_idle',24,false);
        setProperty('pibby.alpha', 1);
        scaleObject('pibby', 1.2, 1.2);
        addLuaSprite('pibby', false);

        makeAnimatedLuaSprite('titancyborg','titan_tower/cyborg', 2330,700);
        addAnimationByPrefix('titancyborg','idlecy','cyborg_idle',24,false);
        addAnimationByPrefix('titancyborg','intecy','cyborg_intro',29,false);
        setProperty('titancyborg.alpha', 0);
        scaleObject('titancyborg', 1, 1);
        addLuaSprite('titancyborg', false);

	makeLuaSprite('thelogo', 'CN_logo', 920,560);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', false);

elseif songName == 'leader-rgb' then
	makeLuaSprite('jumpcityback1', 'titan_tower/skkyback', -1230,-900 );
	setScrollFactor('jumpcityback1', 0.7, 1);
        scaleObject('jumpcityback1', 1, 1);
        addLuaSprite('jumpcityback1', false);


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


        makeAnimatedLuaSprite('titanraven','titan_tower/raven_idle', 930,100);
        addAnimationByPrefix('titanraven','idle','characrobin',24,false);
        setProperty('titanraven.alpha', 1);

        addLuaSprite('titanraven', false);

        makeAnimatedLuaSprite('titanstar','titan_tower/starfire', 530,200);
        addAnimationByPrefix('titanstar','idle','star_idle',24,false);

        setProperty('titanstar.alpha', 1);
        scaleObject('titanstar', 1, 1);
        addLuaSprite('titanstar', false);

        makeAnimatedLuaSprite('titanbeast','titan_tower/beastboy', -650,900);
        addAnimationByPrefix('titanbeast','idleb','beastboy_alt_idle',24,false);

        setProperty('titanbeast.alpha', 1);
        scaleObject('titanbeast', 1, 1);
        addLuaSprite('titanbeast', false);

        makeAnimatedLuaSprite('pibby','survivors/pibby', 1830,900);
        addAnimationByPrefix('pibby','idlep','pibby_idle',24,false);
        setProperty('pibby.alpha', 1);
        scaleObject('pibby', 1.2, 1.2);
        addLuaSprite('pibby', false);

        makeAnimatedLuaSprite('titancyborg','titan_tower/cyborg', 2330,700);
        addAnimationByPrefix('titancyborg','idlecy','cyborg_idle',24,false);

        setProperty('titancyborg.alpha', 1);
        scaleObject('titancyborg', 1, 1);
        addLuaSprite('titancyborg', false);

	makeLuaSprite('thelogo', 'CN_logo', 920,560);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', false);


end
end

