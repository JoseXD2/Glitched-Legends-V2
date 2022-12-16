
function onBeatHit()
        if curBeat % 2 == 0 then
		objectPlayAnimation('animatedcity','idle', true);
		objectPlayAnimation('animatedcity2','idle', true);
		objectPlayAnimation('animatedcity3','idle', true);
        end
end

local clo = false
function opponentNoteHit(id, direction, noteType, isSustainNote)

if direction == 0 then--C24B99
doTweenColor('1', 'cityback1', 'C24B99', 0.1, 'linear')
doTweenColor('2', 'cityback2', 'C24B99', 0.1, 'linear')
doTweenColor('3', 'cityback3', 'C24B99', 0.1, 'linear')
doTweenColor('4', 'cityback4', 'C24B99', 0.1, 'linear')
doTweenColor('5', 'animatedcity', 'C24B99', 0.1, 'linear')
doTweenColor('6', 'animatedcity2', 'C24B99', 0.1, 'linear')
doTweenColor('7', 'animatedcity3', 'C24B99', 0.1, 'linear')
doTweenColor('17', 'boyfriend', 'C24B99', 0.1, 'linear')
doTweenColor('18', 'dad', 'C24B99', 0.1, 'linear')
doTweenColor('19', 'gf', 'C24B99', 0.1, 'linear')
doTweenColor('20', 'camHud', 'C24B99', 0.1, 'linear')
doTweenColor('21', 'camOther', 'C24B99', 0.1, 'linear')
runTimer('b0', 0.2)
if clo == true then
doTweenColor('22', 'WBG', 'C24B99', 0.1, 'linear')
end
elseif direction == 1 then--00FFFF
doTweenColor('1', 'cityback1', '00FFFF', 0.1, 'linear')
doTweenColor('2', 'cityback2', '00FFFF', 0.1, 'linear')
doTweenColor('3', 'cityback3', '00FFFF', 0.1, 'linear')
doTweenColor('4', 'cityback4', '00FFFF', 0.1, 'linear')
doTweenColor('5', 'animatedcity', '00FFFF', 0.1, 'linear')
doTweenColor('6', 'animatedcity2', '00FFFF', 0.1, 'linear')
doTweenColor('7', 'animatedcity3', '00FFFF', 0.1, 'linear')
doTweenColor('17', 'boyfriend', '00FFFF', 0.1, 'linear')
doTweenColor('18', 'dad', '00FFFF', 0.1, 'linear')
doTweenColor('19', 'gf', '00FFFF', 0.1, 'linear')
doTweenColor('20', 'camHud', '00FFFF', 0.1, 'linear')
doTweenColor('21', 'camOther', '00FFFF', 0.1, 'linear')
runTimer('b1', 0.2)
if clo == true then
doTweenColor('22', 'WBG', '00FFFF', 0.1, 'linear')
end
elseif direction == 2 then--12FA05
doTweenColor('1', 'cityback1', '12FA05', 0.1, 'linear')
doTweenColor('2', 'cityback2', '12FA05', 0.1, 'linear')
doTweenColor('3', 'cityback3', '12FA05', 0.1, 'linear')
doTweenColor('4', 'cityback4', '12FA05', 0.1, 'linear')
doTweenColor('5', 'animatedcity', '12FA05', 0.1, 'linear')
doTweenColor('6', 'animatedcity2', '12FA05', 0.1, 'linear')
doTweenColor('7', 'animatedcity3', '12FA05', 0.1, 'linear')
doTweenColor('17', 'boyfriend', '12FA05', 0.1, 'linear')
doTweenColor('18', 'dad', '12FA05', 0.1, 'linear')
doTweenColor('19', 'gf', '12FA05', 0.1, 'linear')
doTweenColor('20', 'camHud', '12FA05', 0.1, 'linear')
doTweenColor('21', 'camOther', '12FA05', 0.1, 'linear')
runTimer('b2', 0.2)
if clo == true then
doTweenColor('22', 'WBG', '12FA05', 0.1, 'linear')
end
elseif direction == 3 then--F9393F
doTweenColor('1', 'cityback1', 'F9393F', 0.1, 'linear')
doTweenColor('2', 'cityback2', 'F9393F', 0.1, 'linear')
doTweenColor('3', 'cityback3', 'F9393F', 0.1, 'linear')
doTweenColor('4', 'cityback4', 'F9393F', 0.1, 'linear')
doTweenColor('5', 'animatedcity', 'F9393F', 0.1, 'linear')
doTweenColor('6', 'animatedcity2', 'F9393F', 0.1, 'linear')
doTweenColor('7', 'animatedcity3', 'F9393F', 0.1, 'linear')
doTweenColor('17', 'boyfriend', 'F9393F', 0.1, 'linear')
doTweenColor('18', 'dad', 'F9393F', 0.1, 'linear')
doTweenColor('19', 'gf', 'F9393F', 0.1, 'linear')
doTweenColor('20', 'camHud', 'F9393F', 0.1, 'linear')
doTweenColor('21', 'camOther', 'F9393F', 0.1, 'linear')
runTimer('b3', 0.2)
if clo == true then
doTweenColor('22', 'WBG', 'F9393F', 0.1, 'linear')
end
end
end


function goodNoteHit(id, direction, noteType, isSustainNote)

if direction == 0 then--C24B99
doTweenColor('1', 'cityback1', 'C24B99', 0.1, 'linear')
doTweenColor('2', 'cityback2', 'C24B99', 0.1, 'linear')
doTweenColor('3', 'cityback3', 'C24B99', 0.1, 'linear')
doTweenColor('4', 'cityback4', 'C24B99', 0.1, 'linear')
doTweenColor('5', 'animatedcity', 'C24B99', 0.1, 'linear')
doTweenColor('6', 'animatedcity2', 'C24B99', 0.1, 'linear')
doTweenColor('7', 'animatedcity3', 'C24B99', 0.1, 'linear')
doTweenColor('17', 'boyfriend', 'C24B99', 0.1, 'linear')
doTweenColor('18', 'dad', 'C24B99', 0.1, 'linear')
doTweenColor('19', 'gf', 'C24B99', 0.1, 'linear')
runTimer('b0', 0.2)
if clo == true then
doTweenColor('22', 'WBG', 'C24B99', 0.1, 'linear')
end
elseif direction == 1 then--00FFFF
doTweenColor('1', 'cityback1', '00FFFF', 0.1, 'linear')
doTweenColor('2', 'cityback2', '00FFFF', 0.1, 'linear')
doTweenColor('3', 'cityback3', '00FFFF', 0.1, 'linear')
doTweenColor('4', 'cityback4', '00FFFF', 0.1, 'linear')
doTweenColor('5', 'animatedcity', '00FFFF', 0.1, 'linear')
doTweenColor('6', 'animatedcity2', '00FFFF', 0.1, 'linear')
doTweenColor('7', 'animatedcity3', '00FFFF', 0.1, 'linear')
doTweenColor('17', 'boyfriend', '00FFFF', 0.1, 'linear')
doTweenColor('18', 'dad', '00FFFF', 0.1, 'linear')
doTweenColor('19', 'gf', '00FFFF', 0.1, 'linear')
doTweenColor('20', 'camHud', '00FFFF', 0.1, 'linear')
doTweenColor('21', 'camOther', '00FFFF', 0.1, 'linear')
runTimer('b1', 0.2)
if clo == true then
doTweenColor('22', 'WBG', '00FFFF', 0.1, 'linear')
end
elseif direction == 2 then--12FA05
doTweenColor('1', 'cityback1', '12FA05', 0.1, 'linear')
doTweenColor('2', 'cityback2', '12FA05', 0.1, 'linear')
doTweenColor('3', 'cityback3', '12FA05', 0.1, 'linear')
doTweenColor('4', 'cityback4', '12FA05', 0.1, 'linear')
doTweenColor('5', 'animatedcity', '12FA05', 0.1, 'linear')
doTweenColor('6', 'animatedcity2', '12FA05', 0.1, 'linear')
doTweenColor('7', 'animatedcity3', '12FA05', 0.1, 'linear')
doTweenColor('17', 'boyfriend', '12FA05', 0.1, 'linear')
doTweenColor('18', 'dad', '12FA05', 0.1, 'linear')
doTweenColor('19', 'gf', '12FA05', 0.1, 'linear')
doTweenColor('20', 'camHud', '12FA05', 0.1, 'linear')
doTweenColor('21', 'camOther', '12FA05', 0.1, 'linear')
runTimer('b2', 0.2)
if clo == true then
doTweenColor('22', 'WBG', '12FA05', 0.1, 'linear')
end
elseif direction == 3 then--F9393F
doTweenColor('1', 'cityback1', 'F9393F', 0.1, 'linear')
doTweenColor('2', 'cityback2', 'F9393F', 0.1, 'linear')
doTweenColor('3', 'cityback3', 'F9393F', 0.1, 'linear')
doTweenColor('4', 'cityback4', 'F9393F', 0.1, 'linear')
doTweenColor('5', 'animatedcity', 'F9393F', 0.1, 'linear')
doTweenColor('6', 'animatedcity2', 'F9393F', 0.1, 'linear')
doTweenColor('7', 'animatedcity3', 'F9393F', 0.1, 'linear')
doTweenColor('17', 'boyfriend', 'F9393F', 0.1, 'linear')
doTweenColor('18', 'dad', 'F9393F', 0.1, 'linear')
doTweenColor('19', 'gf', 'F9393F', 0.1, 'linear')
doTweenColor('20', 'camHud', 'F9393F', 0.1, 'linear')
doTweenColor('21', 'camOther', 'F9393F', 0.1, 'linear')
runTimer('b3', 0.2)
if clo == true then
doTweenColor('22', 'WBG', 'F9393F', 0.1, 'linear')
end
end
end


function onTimerCompleted(tag)
if tag == 'b0' then
doTweenColor('1', 'cityback1', 'FFFFFF', 0.2, 'linear')
doTweenColor('2', 'cityback2', 'FFFFFF', 0.2, 'linear')
doTweenColor('3', 'cityback3', 'FFFFFF', 0.2, 'linear')
doTweenColor('4', 'cityback4', 'FFFFFF', 0.2, 'linear')
doTweenColor('5', 'animatedcity', 'FFFFFF', 0.2, 'linear')
doTweenColor('6', 'animatedcity2', 'FFFFFF', 0.2, 'linear')
doTweenColor('7', 'animatedcity3', 'FFFFFF', 0.2, 'linear')
doTweenColor('17', 'boyfriend', 'FFFFFF', 0.2, 'linear')
doTweenColor('18', 'dad', 'FFFFFF', 0.2, 'linear')
doTweenColor('19', 'gf', 'FFFFFF', 0.2, 'linear')
doTweenColor('20', 'camHud', 'FFFFFF', 0.2, 'linear')
doTweenColor('21', 'camOther', 'FFFFFF', 0.2, 'linear')
if clo == true then
doTweenColor('22', 'WBG', 'FFFFFF', 0.1, 'linear')
end
elseif tag == 'b1' then

doTweenColor('1', 'cityback1', 'FFFFFF', 0.2, 'linear')
doTweenColor('2', 'cityback2', 'FFFFFF', 0.2, 'linear')
doTweenColor('3', 'cityback3', 'FFFFFF', 0.2, 'linear')
doTweenColor('4', 'cityback4', 'FFFFFF', 0.2, 'linear')
doTweenColor('5', 'animatedcity', 'FFFFFF', 0.2, 'linear')
doTweenColor('6', 'animatedcity2', 'FFFFFF', 0.2, 'linear')
doTweenColor('7', 'animatedcity3', 'FFFFFF', 0.2, 'linear')
doTweenColor('17', 'boyfriend', 'FFFFFF', 0.2, 'linear')
doTweenColor('18', 'dad', 'FFFFFF', 0.2, 'linear')
doTweenColor('19', 'gf', 'FFFFFF', 0.2, 'linear')
doTweenColor('20', 'camHud', 'FFFFFF', 0.2, 'linear')
doTweenColor('21', 'camOther', 'FFFFFF', 0.2, 'linear')
if clo == true then
doTweenColor('22', 'WBG', 'FFFFFF', 0.1, 'linear')
end
elseif tag == 'b2' then

doTweenColor('1', 'cityback1', 'FFFFFF', 0.2, 'linear')
doTweenColor('2', 'cityback2', 'FFFFFF', 0.2, 'linear')
doTweenColor('3', 'cityback3', 'FFFFFF', 0.2, 'linear')
doTweenColor('4', 'cityback4', 'FFFFFF', 0.2, 'linear')
doTweenColor('5', 'animatedcity', 'FFFFFF', 0.2, 'linear')
doTweenColor('6', 'animatedcity2', 'FFFFFF', 0.2, 'linear')
doTweenColor('7', 'animatedcity3', 'FFFFFF', 0.2, 'linear')
doTweenColor('17', 'boyfriend', 'FFFFFF', 0.2, 'linear')
doTweenColor('18', 'dad', 'FFFFFF', 0.2, 'linear')
doTweenColor('19', 'gf', 'FFFFFF', 0.2, 'linear')
doTweenColor('20', 'camHud', 'FFFFFF', 0.2, 'linear')
doTweenColor('21', 'camOther', 'FFFFFF', 0.2, 'linear')
if clo == true then
doTweenColor('22', 'WBG', 'FFFFFF', 0.1, 'linear')
end
elseif tag == 'b3' then
doTweenColor('1', 'cityback1', 'FFFFFF', 0.2, 'linear')
doTweenColor('2', 'cityback2', 'FFFFFF', 0.2, 'linear')
doTweenColor('3', 'cityback3', 'FFFFFF', 0.2, 'linear')
doTweenColor('4', 'cityback4', 'FFFFFF', 0.2, 'linear')
doTweenColor('5', 'animatedcity', 'FFFFFF', 0.2, 'linear')
doTweenColor('6', 'animatedcity2', 'FFFFFF', 0.2, 'linear')
doTweenColor('7', 'animatedcity3', 'FFFFFF', 0.2, 'linear')
doTweenColor('17', 'boyfriend', 'FFFFFF', 0.2, 'linear')
doTweenColor('18', 'dad', 'FFFFFF', 0.2, 'linear')
doTweenColor('19', 'gf', 'FFFFFF', 0.2, 'linear')
doTweenColor('20', 'camHud', 'FFFFFF', 0.2, 'linear')
doTweenColor('21', 'camOther', 'FFFFFF', 0.2, 'linear')
if clo == true then
doTweenColor('22', 'WBG', 'FFFFFF', 0.2, 'linear')
end
end
end

function onEvent(name, value1, value2)
	if name == 'cinematic' and value1 == 'a' then
clo = true

end
	if name == 'cinematic' and value1 == 'b' then
clo = false

end
end

function onUpdatePost()
if clo == false then
setProperty ('WBG.alpha', 0)

end
end