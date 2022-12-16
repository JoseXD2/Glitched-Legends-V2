
function opponentNoteHit()
    health = getProperty('health')
    local luckyRoll50 = math.random(1, 40)
    local luckyRoll51 = math.random(1, 40)
        if (luckyRoll50 >= 25) then

            cameraShake('hud', 0.03, 0.03);
    end
        if (luckyRoll51 >= 25) then

            cameraShake('game', 0.03, 0.03);

    end
end


function onCreate()
	makeLuaSprite('UpperBar', 'empty', 0, -120)
	makeGraphic('UpperBar', 1280, 120, '000000')
	setObjectCamera('UpperBar', 'hud')
	addLuaSprite('UpperBar', false)


	makeLuaSprite('LowerBar', 'empty', 0, 720)
	makeGraphic('LowerBar', 1280, 120, '000000')
	setObjectCamera('LowerBar', 'hud')
	addLuaSprite('LowerBar', false)

end
function onStepHit()
if curStep == 417 then
	doTweenY('Cinematics1', 'UpperBar', 0, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 600, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 120, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 120, 0.5, 'Linear')
	doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.25)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.25)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.25)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.25)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.25)
	doTweenAlpha('AlphaTween9', 'animatedicon', 0, 0.25)
	doTweenAlpha('AlphaTween10', 'animatedbficon', 0, 0.25)
	doTweenAlpha('AlphaTween11', 'uglyHB', 0, 0.25)
	if downscroll then

	doTweenY('Cinematics1', 'UpperBar', 0, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 600, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 480, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 480, 0.5, 'Linear')
	doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.25)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.25)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.25)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.25)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.25)
	doTweenAlpha('AlphaTween9', 'animatedicon', 0, 0.25)
	doTweenAlpha('AlphaTween10', 'animatedbficon', 0, 0.25)
	doTweenAlpha('AlphaTween11', 'uglyHB', 0, 0.25)

	end

end

if curStep == 666 then

	doTweenY('Cinematics1', 'UpperBar', -120, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 50, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 50, 0.5, 'Linear')
	doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.25)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.25)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.25)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.25)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.25)
	doTweenAlpha('AlphaTween9', 'animatedicon', 1, 0.25)
	doTweenAlpha('AlphaTween10', 'animatedbficon', 1, 0.25)
	doTweenAlpha('AlphaTween11', 'uglyHB', 1, 0.25)

	if downscroll then
	
	doTweenY('Cinematics1', 'UpperBar', -120, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 570, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 570, 0.5, 'Linear')
	doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.25)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.25)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.25)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.25)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.25)
	doTweenAlpha('AlphaTween9', 'animatedicon', 1, 0.25)
	doTweenAlpha('AlphaTween10', 'animatedbficon', 1, 0.25)
	doTweenAlpha('AlphaTween11', 'uglyHB', 1, 0.25)
	
	end
end

if curStep == 2459 then
	doTweenY('Cinematics1', 'UpperBar', 0, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 600, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 120, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 120, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 120, 0.5, 'Linear')
	doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.25)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.25)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.25)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.25)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.25)
	doTweenAlpha('AlphaTween9', 'animatedicon', 0, 0.25)
	doTweenAlpha('AlphaTween10', 'animatedbficon', 0, 0.25)
	doTweenAlpha('AlphaTween11', 'uglyHB', 0, 0.25)
	if downscroll then

	doTweenY('Cinematics1', 'UpperBar', 0, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 600, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 480, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 480, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 480, 0.5, 'Linear')
	doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.25)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.25)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.25)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.25)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.25)
	doTweenAlpha('AlphaTween9', 'animatedicon', 0, 0.25)
	doTweenAlpha('AlphaTween10', 'animatedbficon', 0, 0.25)
	doTweenAlpha('AlphaTween11', 'uglyHB', 0, 0.25)

	end

end

if curStep == 2580 then

	doTweenY('Cinematics1', 'UpperBar', -120, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 50, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 50, 0.5, 'Linear')
	doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.25)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.25)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.25)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.25)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.25)
	doTweenAlpha('AlphaTween9', 'animatedicon', 1, 0.25)
	doTweenAlpha('AlphaTween10', 'animatedbficon', 1, 0.25)
	doTweenAlpha('AlphaTween11', 'uglyHB', 1, 0.25)

	if downscroll then
	
	doTweenY('Cinematics1', 'UpperBar', -120, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 570, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 570, 0.5, 'Linear')
	doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.25)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.25)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.25)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.25)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.25)
	doTweenAlpha('AlphaTween9', 'animatedicon', 1, 0.25)
	doTweenAlpha('AlphaTween10', 'animatedbficon', 1, 0.25)
	doTweenAlpha('AlphaTween11', 'uglyHB', 1, 0.25)
	
	end
end

			end
