function onCreate()
	-- background shit
	makeLuaSprite('sanctuaryback', 'sanctuary/skysanctuary', -830,-900 );
	setScrollFactor('sanctuaryback', 1, 1);
        scaleObject('sanctuaryback', 2.7, 2.7)

        addLuaSprite('sanctuaryback', false);
if songName == 'fallen-knight-remix' then
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
makeLuaSprite('i2', 'sanctuary/particle1', 1270, 0)

scaleObject ('i2', 0.3, 0.3)
	setScrollFactor('i2', 0.7, 0.7);
addLuaSprite('i2', false)
doTweenColor ('id', 'i2', 'FFEF00', 0.001, 'linear')
end
	makeLuaSprite('sanctuaryback2', 'sanctuary/sanctuarymoon', -230,-900 );
	setScrollFactor('sanctuaryback2', 0.7, 0.7);
        scaleObject('sanctuaryback2', 2, 2);
        addLuaSprite('sanctuaryback2', false);

	makeLuaSprite('sanctuaryback3', 'sanctuary/sanctuaryback', -830,-900 );
	setScrollFactor('sanctuaryback3', 1, 1);
        scaleObject('sanctuaryback3', 2.7, 2.5);
        addLuaSprite('sanctuaryback3', false);

		makeAnimatedLuaSprite('animatedbficonp', 'icons/pibbyanimatedicon', getProperty('iconP1.x'), getProperty('iconP1.y'))
		addAnimationByPrefix('animatedbficonp', 'normal', 'pibby_n ',24, true)
		addAnimationByPrefix('animatedbficonp', 'losing', 'pibby_w ', 24, true)
                addAnimationByPrefix('animatedbficonp', 'winning', 'pibby_l ', 24, true)
		setScrollFactor('animatedbficonp', 0, 0)
		setObjectCamera('animatedbficonp', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedbficonp', false)
                setObjectOrder('animatedbficonp', 99)
		setProperty('animatedbficonp.alpha', 0)
		objectPlayAnimation('animatedbficonp', 'normal', false)
end

function onCreatePost()
setProperty('gf.flipX', false)


end


function onUpdate(elapsed)

		setProperty('iconP1.alpha', 0)
		if getProperty('health') > 1.5 then
			objectPlayAnimation('animatedbficonp', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedbficonp', 'winning', false)
		else
			objectPlayAnimation('animatedbficonp', 'normal', false)
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedbficonp.x', getProperty('iconP1.x'))
	setProperty('animatedbficonp.angle', getProperty('iconP1.angle'))
	setProperty('animatedbficonp.y', getProperty('iconP1.y') - 10)
	setProperty('animatedbficonp.scale.x', getProperty('iconP1.scale.x'))
	setProperty('animatedbficonp.scale.y', getProperty('iconP1.scale.y'))
end


function onUpdatePost()
if getProperty('boyfriend.animation.curAnim.name') == 'singUP' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then

setProperty('animatedbficon.alpha', 1)
setProperty('animatedbficonp.alpha', 0)

end
if getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
setProperty('animatedbficon.alpha', 0)
setProperty('animatedbficonp.alpha', 1)
end
end

function opponentNoteHit()
    if getProperty('health') > 0.1 then
if songName == 'fallen-knight' then
       health = getProperty('health')
       setProperty('health', health- 0.02);
	end
if songName == 'forgotten-knight' then
       health = getProperty('health')
       setProperty('health', health- 0.015);
	end
end
end