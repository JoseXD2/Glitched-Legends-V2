function onCreatePost()
preMv = 0
prev = 100

	makeLuaSprite('chst', 'gravity/mechanic stuff/chainsaw', 100,100);
        scaleObject('chst', 0.5, 0.5);
        setProperty('chst.angle', 90)
        setProperty('chst.alpha', 0)
		setObjectCamera('chst', 'hud')
        addLuaSprite('chst', false);

        setProperty('chst.alpha', 1)
makeLuaText('prev', 'chain kill:%0',0,70,240)
getProperty('scoreTxt.x');
setTextSize('prev', 40);
setTextBorder('prev', 2, '000000');
addLuaText('prev');

end

function onUpdate(elapsed)
if preMv >= prev then
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
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'vicky_note' then
preMv = preMv + getRandomInt(1, 20)
preMt = preMt - getRandomInt(1, 10)
end
end


function onUpdatePost(elasped)
setTextString('prev', 'chain kill:%'..preMv);
end


function onMoveCamera(focus)
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if focus == 'dad' then
		setProperty('animatedicont.alpha', 0)
		setProperty('animatedicon.alpha', 1)
end
	if noteType == 'GF Sing' or focus == 'gf' then
		setProperty('animatedicont.alpha', 1)
		setProperty('animatedicon.alpha', 0)

end
end
end