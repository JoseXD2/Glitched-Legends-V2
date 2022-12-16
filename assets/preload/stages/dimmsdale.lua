function onCreate()
	-- background for timmy

	makeLuaSprite('dimmback1', 'dimmsdale/dimsdalebacksky', -1830,-1900 );
	setScrollFactor('dimmback1', 1, 1);
        scaleObject('dimmback1', 3.3, 3.3);
        addLuaSprite('dimmback1', false);

	makeLuaSprite('dimmback2', 'dimmsdale/dimsdalehouseback2', -2030,-600 );
	setScrollFactor('dimmback2', 1, 1);
        scaleObject('dimmback2', 2.8, 2.8);
        addLuaSprite('dimmback2', false);

        makeAnimatedLuaSprite('dimmanimated','dimmsdale/houseanimated', -1430,-1685);
        addAnimationByPrefix('dimmanimated','idle','likahf',24,false);
        setProperty('dimmanimated.alpha', 1);
        scaleObject('dimmanimated', 3.1, 3.1);
        addLuaSprite('dimmanimated', false);

        makeAnimatedLuaSprite('dimmanimated2','survivors/croker', 1930,185);
        addAnimationByPrefix('dimmanimated2','idle','croker',24,false);
        setProperty('dimmanimated2.alpha', 0);
        addLuaSprite('dimmanimated2', false);

        makeAnimatedLuaSprite('dimmanimated3','survivors/chester', 2130,-50);
        addAnimationByPrefix('dimmanimated3','idle','chester',24,false);
        setProperty('dimmanimated3.alpha', 0);
        addLuaSprite('dimmanimated3', false);
        scaleObject('dimmanimated3', 1.3, 1.3);

        makeAnimatedLuaSprite('dimmanimated4','survivors/aj', 2430,-25);
        addAnimationByPrefix('dimmanimated4','idle','cjxd',24,false);
        setProperty('dimmanimated4.alpha', 0);
        addLuaSprite('dimmanimated4', false);
        scaleObject('dimmanimated4', 1.3, 1.3);
	makeLuaSprite('thelogo', 'nick', 890,560);
        scaleObject('thelogo', 1, 1);
        setProperty('thelogo.alpha', 1)
		setObjectCamera('thelogo', 'hud')
        addLuaSprite('thelogo', false);
	makeLuaSprite('chst', 'dimmsdale/chainswish', 30,150);
        scaleObject('chst', 0.5, 0.5);
        setProperty('chst.angle', 90)
        setProperty('chst.alpha', 0)
		setObjectCamera('chst', 'hud')
        addLuaSprite('chst', false);

	if songName == 'wish-come-true-v2' or 'wish-come-true' then
preMv = 0
prev = 100
preMt = 0
pret = 100
        setProperty('chst.alpha', 1)
makeLuaText('prev', 'chain kill:%0',0,70,240)
getProperty('scoreTxt.x');
setTextSize('prev', 40);
setTextBorder('prev', 2, '000000');
addLuaText('prev');

makeLuaText('pret', 'wish kill:%0',0,86,280)
getProperty('scoreTxt.x');
setTextSize('pret', 40);
setTextBorder('pret', 2, '000000');
addLuaText('pret');
end
end

function onUpdate(elapsed)
if preMv >= prev then
setProperty('health', 0)
end
if preMt >= pret then
setProperty('health', 0)
end
	local lol = math.random(2,3)
if preMv >= 60 then
	if (lol >= 2) then
setTextBorder('prev', 2, '000000');

	end
	if (lol >= 3) then
setTextBorder('prev', 2, 'FF002D');

	end
else
setTextBorder('prev', 2, '000000');
end
	local lol2 = math.random(4,5)
if preMt >= 60 then
	if (lol2 >= 4) then
setTextBorder('pret', 2, '000000');

	end
	if (lol2 >= 5) then
setTextBorder('pret', 2, 'FFF700');

	end
else
setTextBorder('pret', 2, '000000');
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'vicky_note' then
preMv = preMv + getRandomInt(1, 20)
preMt = preMt - getRandomInt(1, 10)
end
	if noteType == 'wish_note' then
preMv = preMv - getRandomInt(1, 10)
preMt = preMt + getRandomInt(1, 20)
end
end


function onUpdatePost(elasped)
setTextString('prev', 'chain kill:%'..preMv);
setTextString('pret', 'wish kill:%'..preMt);
end

