function onCreate()
	-- background shit

        makeLuaSprite('tomfront', 'tom/tomsback', -680,-210);
	setScrollFactor('tomfront', 1, 1);
	scaleObject('tomfront', 1.9, 1.5);
        addLuaSprite('tomfront', false);

        makeAnimatedLuaSprite('tomsanimated3','tom/glitchone', -100,470);
        addAnimationByPrefix('tomsanimated3','idle','sifglasf',24,false);
        setProperty('tomsanimated3.alpha', 1);
	scaleObject('tomsanimated3', 1.9, 1.5);
        addLuaSprite('tomsanimated3', false);

        makeAnimatedLuaSprite('tomsanimated','tom/catglitch', -130,850);
        addAnimationByPrefix('tomsanimated','idle','black',24,false);
        setProperty('tomsanimated.alpha', 1);
	scaleObject('tomsanimated', 0.9, 0.9);
        addLuaSprite('tomsanimated', true);

        makeAnimatedLuaSprite('tomsanimated2','survivors/spike_survivor', 1730,600);
        addAnimationByPrefix('tomsanimated2','idle','spike',24,false);
        setProperty('tomsanimated2.alpha', 1);
        addLuaSprite('tomsanimated2', true);

	makeLuaSprite('tomsback', 'tom/tomfront', -130,600 );
	setScrollFactor('tomsback', 0.5, 1);
	scaleObject('tomback', 1.5, 1.5);
        addLuaSprite('tomsback',true);
 
	makeLuaSprite('thelogo', 'CN_logo', 920,560);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo',false);
	
       

end
function onMoveCamera(focus)
function opponentNoteHit(id, direction, noteType, isSustainNote)

		triggerEvent('Add Camera Zoom', '0.015', '0.015')
	if songName == 'mouse-chase' then
		triggerEvent('Add Camera Zoom', '0.015', '0.015')
    local luckyRoll50 = math.random(1, 50)
    local luckyRoll51 = math.random(1, 50)

        if (luckyRoll50 >= 25) then
            cameraShake('hud', 0.03, 0.03);
    end
        if (luckyRoll51 >= 25) then
            cameraShake('game', 0.03, 0.03);
end
end
	if songName == 'cat-and-mouse' then
	if focus == 'dad' then
		setProperty('animatediconj.alpha', 0)
		setProperty('animatedicon.alpha', 1)
end
	if noteType == 'GF Sing' or focus == 'gf' then
		setProperty('animatediconj.alpha', 1)
		setProperty('animatedicon.alpha', 0)

end
end
end
end