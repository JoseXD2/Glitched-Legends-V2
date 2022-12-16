function onCreate()
	--background boi
	makeLuaSprite('stage', 'back1', -2500,-1020)
        makeLuaSprite('hallfront', 'lasthall/pilares', -2500,-1020);
	setLuaSpriteScrollFactor('stage', 1, 1)
	
	setScrollFactor('hallfront', 0.4, 1);

	addLuaSprite('stage', false)

        scaleObject('stage', 2, 2);
        scaleObject('hallfront', 2, 2);
	addLuaSprite('hallfront', true)

	makeLuaSprite( 'stage2', 'back2', -2500,-1020)
	setLuaSpriteScrollFactor('stage2', 1, 1)
	addLuaSprite('stage2', false)
        scaleObject('stage2', 2, 2);

	makeLuaSprite( 'stage3', 'back3', -1000, -700)
	setLuaSpriteScrollFactor('stage3', 1, 1)
	addLuaSprite('stage3', false)

	makeLuaSprite( 'stage41', 'waterfalls/wback', -2500,-2420)
        makeLuaSprite( 'stage21', 'waterfalls/wback2', -2500,-520)
        makeLuaSprite( 'stage11', 'waterfalls/wfront', -2500,-520)
        makeLuaSprite( 'stage01', 'waterfalls/wfront2', -2500,1120)
        makeAnimatedLuaSprite('stage4','waterfalls/wanimated',-400,-120)addAnimationByPrefix('stage4','dance','cascada',25,true)
        objectPlayAnimation('stage4','dance',true)
        makeAnimatedLuaSprite('stage42','waterfalls/wanimated2',-500,520)addAnimationByPrefix('stage42','dance','espuma',25,true)
        objectPlayAnimation('stage42','dance',true)
        makeAnimatedLuaSprite('stage43','waterfalls/mrfre',-900,270)
        objectPlayAnimation('stage43','dance',true)
        makeAnimatedLuaSprite('stage44','waterfalls/wplauser',-1100,690)
        objectPlayAnimation('stage44','dance',true)

        setScrollFactor('stage41', 1, 1);

	setLuaSpriteScrollFactor('stage4', 1, 1)

        scaleObject('stage4', 2, 2);
        scaleObject('stage41', 2, 2);
        scaleObject('stage21', 2, 2);
        scaleObject('stage11', 2, 2);
        scaleObject('stage01', 2, 2);
        scaleObject('stage42', 2, 2);

	addLuaSprite('stage41', false)
	addLuaSprite('stage21', false)
	addLuaSprite('stage4', false)
	addLuaSprite('stage42', false)
	addLuaSprite('stage11', false)
	addLuaSprite('stage43', false)
	addLuaSprite('stage44', false)
        addAnimationByPrefix('stage43','dance','mrfazbears_idle',24,false)
        addAnimationByPrefix('stage44','dance','plauser_beat-idle',24,false)
	addLuaSprite('stage01', false)



	setProperty('hallfront.visible', false)
	setProperty('stage2.visible', false)
	setProperty('stage3.visible', false)
	setProperty('stage4.visible', false)
	setProperty('stage42.visible', false)
	setProperty('stage41.visible', false)
	setProperty('stage21.visible', false)
	setProperty('stage11.visible', false)
	setProperty('stage43.visible', false)
	setProperty('stage44.visible', false)
	setProperty('stage01.visible', false)
end
function onBeatHit()
 if curBeat % 2== 0 then
 objectPlayAnimation('stage43', 'dance', false);
objectPlayAnimation('stage44', 'dance', false);
end
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('stage.visible', false);
			setProperty('stage2.visible', true);
	                setProperty('stage44.visible', false)
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false);
			setProperty('stage41.visible', false)
	                setProperty('stage43.visible', false)
	                setProperty('stage42.visible', false)
	                setProperty('stage21.visible', false)
	                setProperty('stage11.visible', false)
	                setProperty('stage01.visible', false)
	setProperty('hallfront.visible', false)

		end

		if value1 == '3' then
			setProperty('stage3.visible', true);
			setProperty('stage.visible', false);
	                setProperty('stage42.visible', false)
			setProperty('stage2.visible', false);
			setProperty('stage4.visible', false);
	                setProperty('stage44.visible', false)
			setProperty('stage41.visible', false)
	                setProperty('stage43.visible', false)
	                setProperty('stage21.visible', false)
	                setProperty('stage11.visible', false)
	                setProperty('stage01.visible', false)
	                setProperty('hallfront.visible', false)
                        setCharacterX('dad', -900);
                        setCharacterX('boyfriend', -1300);
                        setCharacterX('girlfriend', -3600);
		end

		if value1 == '4' then
			setProperty('stage2.visible', false);
			setProperty('stage.visible', false);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', true)
			setProperty('stage41.visible', true)
	                setProperty('stage21.visible', true)
 	                setProperty('stage43.visible', true)
 	                setProperty('stage44.visible', true) 
	                setProperty('stage11.visible', true)
	                setProperty('stage01.visible', true)
	                setProperty('hallfront.visible', false)
                        setCharacterX('dad', -800);
                        setCharacterX('girlfriend', -400);
	                setProperty('stage42.visible', true)
		end
		
		if value1 == '1' then
			setProperty('stage2.visible', false);
			setProperty('stage.visible', true);
  	                setProperty('stage44.visible', false)
	                setProperty('hallfront.visible', true)
	                setProperty('stage43.visible', false)
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false);
			setProperty('stage41.visible', false)
	                setProperty('stage21.visible', false)
	                setProperty('stage11.visible', false)
	                setProperty('stage01.visible', false)
	                setProperty('stage42.visible', false)
                        setCharacterX('dad', -1500);
                        setCharacterX('girlfriend', -1250);
                        setCharacterX('boyfriend', 790);
		end
	end
end