function onCreatePost()


	makeLuaSprite('b', nil, 0, 0);
	makeGraphic('b', 5000, 3000, '000000');
	setObjectCamera('b', 'other');
setProperty('b.alpha', 0)
	addLuaSprite('b', true);
end

function onStepHit()
    if curStep == 864 then
setProperty('b.alpha', 1)
    elseif curStep == 866 then
	doTweenColor('ico', 'dad', '000000', 0.1, 'linear');
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
    elseif curStep == 887 then
	doTweenAlpha('i', 'b', 0.8, 1, 'linear');

	doTweenZoom('gamezoom', 'camGame', 0.7, 0.3, 'quadInOut');
		setProperty('defaultCamZoom', 0.7);


    elseif curStep == 961 then
	doTweenAlpha('ic', 'b', 1, 0.0001, 'linear');
end
end