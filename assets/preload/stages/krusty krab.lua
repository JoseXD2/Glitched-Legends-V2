function onCreate()
	-- background shit
	makeLuaSprite('krustykback2', 'bk/krustyfront', -830,400 );
	setScrollFactor('krustykback2', 1, 1);
        scaleObject('krustykback2', 1.1, 1);
        addLuaSprite('krustykback2', false);

	makeLuaSprite('krustykback1', 'bk/krustyback', -830,-840 );
	setScrollFactor('krustykback1', 1, 1);
        scaleObject('krustykback1', 1.1, 1);
        addLuaSprite('krustykback1', false);

	makeLuaSprite('krustykfront1', 'bk/krustydoor', 130,-180 );
	setScrollFactor('krustykfront1', 1, 1);
        scaleObject('krustykfront1', 1, 1);
        addLuaSprite('krustykfront1', false);

        makeAnimatedLuaSprite('krustyanimated','bk/krustycharactes1', 130,25);
        addAnimationByPrefix('krustyanimated','idle','characterskrusty',24,false);
        addLuaSprite('krustyanimated', false);
        scaleObject('krustyanimated', 0.6, 0.6);

        makeAnimatedLuaSprite('krustyanimated2','bk/patrickkrusty', 1260,-105);
        addAnimationByPrefix('krustyanimated2','idle','estrella',24,false);
        addLuaSprite('krustyanimated2', false);
        scaleObject('krustyanimated2', 0.6, 0.6);

        makeAnimatedLuaSprite('sponghouseaniamted3','bk/gary_survivor', 1570, 500);
        addAnimationByPrefix('sponghouseaniamted3','idle','gary_pibby',24,false);
        setScrollFactor('sponghouseaniamted3', 1, 1);
        addLuaSprite('sponghouseaniamted3', false);
        scaleObject('sponghouseaniamted3', 1, 1);

        makeAnimatedLuaSprite('sponghouseaniamted8','bk/plankton_survivor', 1670, 700);
        addAnimationByPrefix('sponghouseaniamted8','idle','plankton',24,false);
        setScrollFactor('sponghouseaniamted8', 1, 1);
        addLuaSprite('sponghouseaniamted8', true);
        scaleObject('sponghouseaniamted8', 1, 1);

	makeLuaSprite('krustykfront2', 'bk/blackthingagain', -1230,-1580 );
	setScrollFactor('krustykfront2', 1, 1);
        scaleObject('krustykfront2', 1, 1);
        addLuaSprite('krustykfront2', true);


	makeLuaSprite('thelogo', 'nick_logo', 870,520);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', false);


end
function onGameOver()
	loadSong(songName, difficulty)
end
