function onCreate()
	-- background shit
	makeLuaSprite('bk', 'bk/skyseaback', -2330,-2800 );
	setScrollFactor('bk', 1, 1);
        scaleObject('bk', 2, 2);
        addLuaSprite('bk', false);

	makeLuaSprite('bk2', 'bk/frontsea', -2330,-900 );
	setScrollFactor('bk2', 1, 1);
        scaleObject('bk2', 2, 2);
        addLuaSprite('bk2', false);

        makeAnimatedLuaSprite('bkanimated','bk/ruselandiforgottehname',2170, -230)
        addAnimationByPrefix('bkanimated','dance','characters1iguess',24,false)
        addLuaSprite('bkanimated', false);
	scaleObject('bkanimated', 1.3, 1.3);

        makeAnimatedLuaSprite('bkanimated2','bk/corruptedcharacters',1870, 800)
        addAnimationByPrefix('bkanimated2','dance','characters3iguess',24,false)
        addLuaSprite('bkanimated2', false);
	scaleObject('bkanimated2', 0.8, 0.8);

        makeAnimatedLuaSprite('bkanimated3','bk/Mr_krabs',370, 800)
        addAnimationByPrefix('bkanimated3','dance','themrmoneyman',24,false)
        addLuaSprite('bkanimated3', false);
	scaleObject('bkanimated3', 0.8, 0.8);


        makeAnimatedLuaSprite('pibby','survivors/pibby',3170, 700);
        addAnimationByPrefix('pibby','idlep','pibby_idle',24,false);
        setProperty('pibby.alpha', 1);
        scaleObject('pibby', 1.2, 1.2);
        addLuaSprite('pibby', false);

        makeAnimatedLuaSprite('sponghouseaniamted3','bk/gary_survivor', 3270, 1100);
        addAnimationByPrefix('sponghouseaniamted3','idle','gary_pibby',24,false);
        setScrollFactor('sponghouseaniamted3', 1, 1);
        addLuaSprite('sponghouseaniamted3', false);
        scaleObject('sponghouseaniamted3', 1, 1);

        makeAnimatedLuaSprite('sponghouseaniamted8','bk/plankton_survivor', 3270, 1200);
        addAnimationByPrefix('sponghouseaniamted8','idle','plankton',24,false);
        setScrollFactor('sponghouseaniamted8', 1, 1);
        addLuaSprite('sponghouseaniamted8', true);
        scaleObject('sponghouseaniamted8', 1, 1);



	makeLuaSprite('bk4', 'bk/frontseastand', -2330,1000 );
	setScrollFactor('bk4', 0.5, 1);
        scaleObject('bk4', 2, 2);
        addLuaSprite('bk4', true);

	makeLuaSprite('bk5', 'bk/bikinibottom', 3630,-700 );
	setScrollFactor('bk5', 0.3, 1);
        scaleObject('bk5', 2, 2);
        addLuaSprite('bk5', true);

        makeAnimatedLuaSprite('bubbles','bk/bubbles',-100, -100)
        addAnimationByPrefix('bubbles','dance','bubbles',24,false)
        setObjectCamera('bubbles', 'other')
        addLuaSprite('bubbles', false);
        setProperty('bubbles.alpha', 0);
	scaleObject('bubbles', 1.3, 1.3);


	makeLuaSprite('thelogo', 'nick_logo', 870,520);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'other')
        addLuaSprite('thelogo', true);

end
