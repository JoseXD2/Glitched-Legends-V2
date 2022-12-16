function onCreate()
	-- fuck this i am tired man 
	makeLuaSprite('purpleback', 'purple/purpleback', -2600,-920);
	setScrollFactor('purpleback', 0.8, 1);
setProperty('purpleback.alpha', 0)
        addLuaSprite('purpleback', false);

	makeLuaSprite('purpleback2', 'purple/purpleback2', -2600,-920);
	setScrollFactor('purpleback2', 1, 1);
setProperty('purpleback2.alpha', 0)
        addLuaSprite('purpleback2', false);

	makeLuaSprite('purplefront', 'purple/purplefront', -2600,-920);
	setScrollFactor('purplefront', 0.4, 1);
setProperty('purplefront.alpha', 0)
        addLuaSprite('purplefront', true);
            

        makeAnimatedLuaSprite('villageanimated','survivors/mony_survivor', 890, -100);
        addAnimationByPrefix('villageanimated','idle','mony_survivor',24,false);
setProperty('villageanimated.alpha', 0)
        addLuaSprite('villageanimated', false);

	makeLuaSprite('k', nil, 0, 0);
	makeGraphic('k', 1370, 750, '000000');
	setObjectCamera('k', 'other');
	setProperty('k.alpha',0)
	addLuaSprite('k', true);
end

function onCreatePost()
setProperty('dad.alpha', 0)
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenAlpha('animatedicon', 'animatedicon', 0, 0.0000001, 'linear')
doTweenAlpha('ii96w', 'uglyHB', 0, 0.0000001, 'linear')
end
function onStepHit()
if curStep == 64 then

doTweenAlpha('2', 'purpleback2', 1, 1, 'quadInOut')
doTweenAlpha('3', 'purplefront', 1, 1, 'quadInOut')
elseif curStep == 96 then
doTweenAlpha('1', 'purpleback', 1, 1, 'quadInOut')
elseif curStep == 128 then
doTweenAlpha('4', 'villageanimated', 1, 1, 'quadInOut')
elseif curStep == 160 then
doTweenAlpha('timeTxt', 'timeTxt', 1, 1, 'quadInOut')
doTweenAlpha('timeBar', 'timeBar', 1, 1, 'quadInOut')
doTweenAlpha('timeBarBG', 'timeBarBG', 1, 1, 'quadInOut')
elseif curStep == 192 then
doTweenAlpha('healthBar', 'healthBar', 1, 1, 'quadInOut')
doTweenAlpha('ii96w', 'uglyHB', 1, 1, 'quadInOut')
elseif curStep == 224 then
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 1, 'quadInOut')
doTweenAlpha('animatedbficon', 'animatedbficon', 1, 1, 'quadInOut')
doTweenAlpha('animatedicon', 'animatedicon', 1, 1, 'quadInOut')
elseif curStep == 242 then
		doTweenAlpha('hi', 'k', 1, 0.5, 'quadInOut');
setProperty('dad.alpha', 1)
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.5, 'quadInOut')
doTweenAlpha('animatedicon', 'animatedicon', 0, 0.5, 'quadInOut')
elseif curStep == 262 then
doTweenAlpha('hi', 'k', 0, 0.0001, 'quadInOut')
doTweenAlpha('animatedbficon', 'animatedbficon', 1, 0.01, 'quadInOut')
doTweenAlpha('animatedicon', 'animatedicon', 1, 0.01, 'quadInOut')
elseif curStep == 278 then
doTweenAlpha('hi', 'k', 1, 0.0001, 'quadInOut')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.01, 'quadInOut')
doTweenAlpha('animatedicon', 'animatedicon', 0, 0.01, 'quadInOut')
elseif curStep == 288 then
doTweenAlpha('hi', 'k', 0, 0.0001, 'quadInOut')
doTweenAlpha('animatedbficon', 'animatedbficon', 1, 0.01, 'quadInOut')
doTweenAlpha('animatedicon', 'animatedicon', 1, 0.01, 'quadInOut')
end
end