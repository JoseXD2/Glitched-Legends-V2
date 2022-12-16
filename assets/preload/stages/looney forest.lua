function onCreate()
	-- background shit
	makeLuaSprite('looneyback', 'looneyforest/backmoonlooney', -1230,-900 );
	setScrollFactor('looneyback', 1, 1);
        scaleObject('looneyback', 2, 2);
        addLuaSprite('looneyback', false);

	makeLuaSprite('looneyback1', 'looneyforest/backlooney', -1230,-800 );
	setScrollFactor('looneyback1', 1, 1);
        scaleObject('looneyback1', 2, 2);
        addLuaSprite('looneyback1', false);

        makeAnimatedLuaSprite('looneyanimated','looneyforest/animatedlooney', -830,125);
        addAnimationByPrefix('looneyanimated','idle','charactersbugs',24,false);
        addLuaSprite('looneyanimated', false);
        scaleObject('looneyanimated', 2, 2);

        makeAnimatedLuaSprite('looneyanimated2','looneyforest/bunbun', 1830,-525);
        addAnimationByPrefix('looneyanimated2','idle','BUNBUN',24,false);
        addLuaSprite('looneyanimated2', false);
        scaleObject('looneyanimated2', 2, 2);

	makeLuaSprite('looneyback2', 'looneyforest/frontlooney', -1230,200 );
	setScrollFactor('looneyback2', 1, 1);
        scaleObject('looneyback2', 2, 2);
        addLuaSprite('looneyback2', false);

	makeLuaSprite('looneyback3', 'looneyforest/frontlooney2', -1230,800 );
	setScrollFactor('looneyback3', 1, 1);
        scaleObject('looneyback3', 2, 2);

        addLuaSprite('looneyback3', true);

        makeAnimatedLuaSprite('looneyanimated3','looneyforest/looneycharacters2', -430,125);
        addAnimationByPrefix('looneyanimated3','idle','animatedcharacters',24,false);
        addLuaSprite('looneyanimated3', true);
	setScrollFactor('looneyanimated3', 1, 1);
        scaleObject('looneyanimated3', 2, 2);

	makeLuaSprite('carrot', 'looneyforest/mechanic stuff/carrot', 1000,500);
        scaleObject('carrot', 0.5, 0.5);
	setProperty('carrot.angle', 90);

		setObjectCamera('carrot', 'other')
        addLuaSprite('carrot', false);
if downscroll then
	makeLuaSprite('carrot', 'looneyforest/mechanic stuff/carrot', 1000,-60);
        scaleObject('carrot', 0.5, 0.5);
	setProperty('carrot.angle', 90);
		setObjectCamera('carrot', 'other')
        addLuaSprite('carrot', false);
end

	makeLuaSprite('thelogo', 'CN_logo', 920,560);
        scaleObject('thelogo', 1, 1);

		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', false);


end

