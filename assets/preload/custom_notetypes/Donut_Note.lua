function onCreate()


makeAnimatedLuaSprite('donut', 'Springfield/mechanic stuff/donut_sprites', 0, 0)
addAnimationByPrefix('donut','donut1','donuteat1',24,false)
addAnimationByPrefix('donut','donut2','donuteat2',24,false)
addAnimationByPrefix('donut','donut3','donuteat3',24,false)
addAnimationByPrefix('donut','donut4','donuteat4',24,false)
addAnimationByPrefix('donut','donut5','donuteat5',24,false)
addAnimationByPrefix('donut','donut6','donuteat6',24,false)
addAnimationByPrefix('donut','donut7','donuteat7',24,false)
addAnimationByPrefix('donut','donut8','donuteat8',24,false)
addAnimationByPrefix('donut','donut9','donuteat9',24,false)
addAnimationByPrefix('donut','donut10','donuteat10',24,false)
addAnimationByPrefix('donut','donut11','donuteat11',24,false)
addAnimationByPrefix('donut','donut12','donuteat12',24,false)
addAnimationByPrefix('donut','donut13','donuteat13',24,false)
addAnimationByPrefix('donut','donut14','donuteat14',24,false)
addAnimationByPrefix('donut','donut15','donuteat15',24,false)
addAnimationByPrefix('donut','donutdone','donuteaten',24,false)
scaleObject('donut', 0.5, 0.5)
setObjectCamera('donut', 'hud')
addLuaSprite('donut', true)


Counter = 0
makeLuaText('dd', '0',0,75,65)
getProperty('scoreTxt.x');
setTextSize('dd', 90);
setTextBorder('dd', 3, 'FF00DD');
addLuaText('dd', true);
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Donut_Note' then --Check if the note on the chart is a Bullet Note

			setPropertyFromGroup('unspawnNotes', i, 'texture', 'donut_note'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end
function onStepHit()
        if curStep == 1552 then
    if Counter <= 14 then
doTweenX('d', 'donut', 500, 1.5, 'linear')
doTweenY('dd', 'donut', 250, 1.5, 'linear')
doTweenAlpha('gv', 'dd', 0, 1, 'linear')
doTweenX('ddd', 'donut.scale', 1.5, 1, 'linear')
doTweenY('dddd', 'donut.scale', 1.5, 1, 'linear')

end
    if Counter >= 15 then
doTweenX('d', 'donut', 450, 1.5, 'linear')
doTweenY('dd', 'donut', 250, 1.5, 'linear')
doTweenAlpha('gv', 'dd', 0, 1, 'linear')
doTweenX('ddd', 'donut.scale', 1.5, 1, 'linear')
doTweenY('dddd', 'donut.scale', 1.5, 1, 'linear')
end
        elseif curStep == 1619 then
    if Counter <= 14 then
setProperty('health', 0)

end
        elseif curStep == 1584 then
    if Counter >= 15 then
	doTweenColor('go back', 'donut', '80FF00', 0.01, 'linear');
setProperty('donut.scale.x', 1.7)
setProperty('donut.scale.y', 1.7)
end
    if Counter <= 14 then
	doTweenColor('go fuck your self', 'donut', 'FF0000', 0.01, 'linear');
setProperty('donut.scale.x', 1.7)
setProperty('donut.scale.y', 1.7)
end
end
end

function onUpdatePost(elasped)
setTextString('dd', ''..Counter);
setTextBorder('dd', 3, 'FF00DD');
if Counter <= -1 then
setTextBorder('dd', 3, 'FF0100');
end
if Counter <= 0 then
objectPlayAnimation('donut', 'donut1', true);

end
if Counter == 1 then
objectPlayAnimation('donut', 'donut2', true);
end
if Counter == 2 then
objectPlayAnimation('donut', 'donut3', true);
end
if Counter == 3 then
objectPlayAnimation('donut', 'donut4', true);
end
if Counter == 4 then
objectPlayAnimation('donut', 'donut5', true);
end
if Counter == 5 then
objectPlayAnimation('donut', 'donut6', true);
end
if Counter == 6 then
objectPlayAnimation('donut', 'donut7', true);
end
if Counter == 7 then
objectPlayAnimation('donut', 'donut8', true);
end
if Counter == 8 then
objectPlayAnimation('donut', 'donut9', true);
end
if Counter == 9 then
objectPlayAnimation('donut', 'donut10', true);
end
if Counter == 10 then
objectPlayAnimation('donut', 'donut11', true);
end
if Counter == 11 then
objectPlayAnimation('donut', 'donut12', true);
end
if Counter == 12 then
objectPlayAnimation('donut', 'donut13', true);
end
if Counter == 13 then
objectPlayAnimation('donut', 'donut14', true);
end
if Counter == 14 then
objectPlayAnimation('donut', 'donut15', true);
end
if Counter >= 15 then
objectPlayAnimation('donut', 'donutdone', true);
setTextBorder('dd', 3, '80FF00');
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Donut_Note' then
setProperty('health', getProperty('health') + 2)
Counter = Counter + 1

    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Donut_Note' then

Counter = Counter - 5

end
end

function onTweenCompleted(tag)
    if tag == 'go back' then
	doTweenColor('go back', 'donut', 'FFFFFF', 3, 'linear');
setProperty('donut.scale.x', 1.5)
setProperty('donut.scale.y', 1.5)
    elseif tag == 'go fuck your self' then
	doTweenColor('go back', 'donut', 'FFFFFF', 3, 'linear');
setProperty('donut.scale.x', 1.5)
setProperty('donut.scale.y', 1.5)
end
end