function onCreate()
	-- background shit
	makeLuaSprite('schopaiback2', 'schoolsenpai/schoolsky', -1230,-900 );
	setScrollFactor('schopaiback2', 1, 1);
        scaleObject('schopaiback2', 3, 3);
        addLuaSprite('schopaiback2', false);

	makeLuaSprite('schopaiback1', 'schoolsenpai/schoolsback', -1230,-900 );
	setScrollFactor('schopaiback1', 1, 1);
        scaleObject('schopaiback1', 3, 3);
        addLuaSprite('schopaiback1', false);

	makeLuaSprite('schopaiback3', 'schoolsenpai/sakuratree1', 1830,-900 );
	setScrollFactor('schopaiback3', 1, 1);
        scaleObject('schopaiback3', 2, 2);
        addLuaSprite('schopaiback3', false);

	makeLuaSprite('schopaiback4', 'schoolsenpai/sakuratree2', -1230,-900 );
	setScrollFactor('schopaiback4', 1, 1);
        scaleObject('schopaiback4', 2, 2);
        addLuaSprite('schopaiback4', false);




end


function onCreatePost()

		makeAnimatedLuaSprite('animatedicon7', 'icons/iconnanimatednotfound', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon7', 'winning', 'senpai_w', 24, true)
		setScrollFactor('animatedicon7', 0, 0)
		setObjectCamera('animatedicon7', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon7', true)
                setObjectOrder('animatedicon7', 99)
		setProperty('animatedicon7.alpha', 0)
		objectPlayAnimation('animatedicon7', 'winning', false)
end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') < 2 then
			objectPlayAnimation('animatedicon7', 'winning', false)
		end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon7.x', getProperty('iconP2.x')-65)
	setProperty('animatedicon7.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon7.y', getProperty('iconP2.y') - 25)
	setProperty('animatedicon7.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon7.scale.y', getProperty('iconP2.scale.y'))
end




function onUpdatePost()
		setProperty('animatedicon7.alpha', 0)
		setProperty('animatedicon.alpha', 1)

if getProperty('dad.animation.curAnim.name') == 'singUP-alt' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then

            cameraShake('hud', 0.02, 0.02);
            cameraShake('game', 0.02, 0.02);
		setProperty('animatedicon7.alpha', 1)
		setProperty('animatedicon.alpha', 0)
        health = getProperty('health')
        if getProperty('health') > 0.4 then
            setProperty('health', health- 0.01);
        end
end 
end