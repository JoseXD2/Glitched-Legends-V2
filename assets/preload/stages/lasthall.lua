function onCreatePost()
	-- fuck this i am tired man 
	makeLuaSprite('hallback2', 'lasthall/lasthall', -2600,-920);
        scaleObject('hallback2', 2, 2);
	setScrollFactor('hallback2', 1, 1);

	makeLuaSprite('hallfront', 'lasthall/pilares', -2600,-920);
	setScrollFactor('hallfront', 0.4, 1);
        scaleObject('hallfront', 2, 2);
            
        addLuaSprite('hallback2', false);
        addLuaSprite('hallfront', true);
end

function onUpdate()
setProperty ('defaultCamZoom', 0.2)
if getProperty('dad.animation.curAnim.name') == 'singUP-alt' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
            cameraShake('hud', 0.03, 0.03);
            cameraShake('game', 0.05, 0.05);

	doTweenColor('back', 'hallback2', 'FF0025', 0.1, 'linear')
	doTweenColor('b2', 'hallfront', 'FF0025', 0.1, 'linear')
	doTweenColor('bac8k', 'hallback2', '00A3FF', 0.1, 'linear')
	doTweenColor('1b2', 'hallfront', '00A3FF', 0.1, 'linear')
	doTweenColor('bac80k', 'hallback2', 'FFEB00', 0.1, 'linear')
	doTweenColor('11b2', 'hallfront', 'FFEB00', 0.1, 'linear')
	doTweenColor('bac78k', 'hallback2', 'A100FF', 0.1, 'linear')
	doTweenColor('13b2', 'hallfront', 'A100FF', 0.1, 'linear')

		triggerEvent('Add Camera Zoom', '0.01', '0.01')

        health = getProperty('health')
        if getProperty('health') > 0.03 then
            setProperty('health', health- 0.005);
        end
end
end

function onTweenCompleted(tag)
if tag == 'back' then
	doTweenColor('back2', 'hallback2', 'FFFFFF', 0.3, 'linear')
	doTweenColor('back22', 'hallfront', 'FFFFFF', 0.3, 'linear')
end
end