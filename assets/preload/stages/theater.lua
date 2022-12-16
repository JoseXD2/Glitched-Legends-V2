function onCreate()
	precacheImage('characters/oswald_pibby_2');
	precacheImage('characters/oswald_pibby_color');
	precacheImage('characters/oswald_pibby');
	precacheImage('characters/oswald_ntm_pibby');
	makeLuaSprite('theaterback1', 'theater/oldback', -1830,-2300 );
	setScrollFactor('theaterback1', 1, 1);
        scaleObject('theaterback1', 2, 2);
        addLuaSprite('theaterback1', false);


	makeLuaSprite('theaterback2', 'theater/oldbacksea', -1830,-500 );
	setScrollFactor('theaterback2', 0.7, 1);
        scaleObject('theaterback2', 2, 2);
        addLuaSprite('theaterback2', false);

	makeLuaSprite('theaterback3', 'theater/oldthing', -430,-900 );
	setScrollFactor('theaterback3', 0.7, 1);
        scaleObject('theaterback3', 2, 2);
        addLuaSprite('theaterback3', false);

        makeAnimatedLuaSprite('characteroswalds','theater/charactersoswald', -280,-555);
        addAnimationByPrefix('characteroswalds','idle','chaanimaniac',24,false);
        scaleObject('characteroswalds', 3, 3);
        setScrollFactor('characteroswalds', 0.7, 1);

        setProperty('characteroswalds.alpha', 1);
        addLuaSprite('characteroswalds', false);


	makeLuaSprite('theaterback4', 'theater/oldfront', -1930,-200 );
	setScrollFactor('theaterback4', 1, 1);
        scaleObject('theaterback4', 2, 2);
        setProperty('theaterback4.alpha', 1);
        addLuaSprite('theaterback4', false);


	makeLuaSprite('theaterbackspecial', 'theater/screenold', 0,0 );
	setScrollFactor('theaterbackspecial', 0.7, 1);
        scaleObject('theaterbackspecial', 1.8, 1.5);
        addLuaSprite('theaterbackspecial', true);
        setObjectCamera('theaterbackspecial', 'other')


	makeLuaSprite('theaterback5', 'theater/theaterold', -1030,-1000 );
	setScrollFactor('theaterback5', 1, 1);
        scaleObject('theaterback5', 2, 2);
        doTweenAlpha('wq11', 'theaterback5', 0, 0.1, 'linear')
        addLuaSprite('theaterback5', false);


        makeAnimatedLuaSprite('characteroswalds2','theater/screen1', 180,-655);
        addAnimationByPrefix('characteroswalds2','idle','gfs alt idle',24,false);
        scaleObject('characteroswalds2', 2, 2);
        setScrollFactor('characteroswalds2', 1, 1);
        doTweenAlpha('wq', 'characteroswalds2', 0, 0.1, 'linear')
        addLuaSprite('characteroswalds2', false);


        makeAnimatedLuaSprite('characteroswalds3','theater/characoswald2', -680,555);
        addAnimationByPrefix('characteroswalds3','idle','personajes de butragas',24,false);
        scaleObject('characteroswalds3', 1, 1);
        setScrollFactor('characteroswalds3', 1, 1);
        doTweenAlpha('swq', 'characteroswalds3', 0, 0.1, 'linear')
        addLuaSprite('characteroswalds3', true);


	makeLuaSprite('theaterback6', 'theater/cortinasfront', -2230,-1500 );
	setScrollFactor('theaterback6', 1, 1);
        doTweenAlpha('swrq', 'theaterback6', 0, 0.1, 'linear')
        scaleObject('theaterback6', 3, 3);
        addLuaSprite('theaterback6', true);


        makeAnimatedLuaSprite('Ssc','theater/staticscreen', 0,0);
        addAnimationByPrefix('Ssc','idle','pngthing',94,true);
	setScrollFactor('Ssc', 0.7, 1);
        scaleObject('Ssc', 2, 2);
        setObjectCamera('Ssc', 'other')
        setProperty('Ssc.alpha', 1)
    setObjectOrder('Ssc', 1999999)
        addLuaSprite('Ssc', true);

end

function onStepHit()
if tag == 960 then
		cameraFlash('game', '0x000000', 99999, true)
end
end