
local right = false
local left = false
local normal = false
local Random = false

function onEvent(name, v1, v2)
if name == 'modchart' then
if v1 == 'L' then
noteTweenY('4', 4 ,100 ,0.1, 'linear')
noteTweenY('5', 5 ,220 ,0.1, 'linear')
noteTweenY('6', 6 ,340 ,0.1, 'linear')
noteTweenY('7', 7 ,460 ,0.1, 'linear')
noteTweenX('BF4', 7, 50, 0.1, 'linear')
noteTweenX('BF3', 6, 50, 0.1, 'linear')
noteTweenX('BF2', 5, 50, 0.1, 'linear')
noteTweenX('BF1', 4, 50, 0.1, 'linear')
runTimer('90', 0.01)
setPropertyFromGroup('playerStrums',3,'downScroll',false)
setPropertyFromGroup('playerStrums',2,'downScroll',false)
setPropertyFromGroup('playerStrums',1,'downScroll',false)
setPropertyFromGroup('playerStrums',0,'downScroll',false)
normal = false
right = false
Random = false
left = true
elseif v1 == 'R' then
normal = false
right = true
left = false
Random = false
setPropertyFromGroup('playerStrums',3,'downScroll',false)
setPropertyFromGroup('playerStrums',2,'downScroll',false)
setPropertyFromGroup('playerStrums',1,'downScroll',false)
setPropertyFromGroup('playerStrums',0,'downScroll',false)
runTimer('270', 0.01)
noteTweenY('4', 4 ,100 ,0.1, 'linear')
noteTweenY('5', 5 ,220 ,0.1, 'linear')
noteTweenY('6', 6 ,340 ,0.1, 'linear')
noteTweenY('7', 7 ,460 ,0.1, 'linear')
noteTweenX('BF4', 7, 1100, 0.1, 'linear')
noteTweenX('BF3', 6, 1100, 0.1, 'linear')
noteTweenX('BF2', 5, 1100, 0.1, 'linear')
noteTweenX('BF1', 4, 1100, 0.1, 'linear')
elseif v1 == 'D' then
runTimer('Xnor', 0.01)
runTimer('Ydown', 0.01)
runTimer('0', 0.01)
normal = true
right = false
left = false
Random = false
elseif v1 == 'U' then
runTimer('Yup', 0.01)
runTimer('Xnor', 0.01)
runTimer('0', 0.01)
normal = true
right = false
Random = false
left = false
elseif v1 == 'Random' then
Random = true
normal = false
right = false
left = false
noteTweenY('4', 4 ,getRandomInt(50, 550) ,0.001, 'linear')
noteTweenY('5', 5 ,getRandomInt(50, 550) ,0.001, 'linear')
noteTweenY('6', 6 , getRandomInt(50, 550) ,0.001, 'linear')
noteTweenY('7', 7 ,getRandomInt(50, 550) ,0.001, 'linear')

noteTweenX('8', 4 ,getRandomInt(50, 415) ,0.001, 'linear')
noteTweenX('9', 5 ,getRandomInt(getPropertyFromGroup('strumLineNotes', 4, 'x') + 90, 525) ,0.001, 'linear')
noteTweenX('10', 6 , getRandomInt(getPropertyFromGroup('strumLineNotes', 7, 'x') - 90, 635) ,0.001, 'linear')
noteTweenX('11', 7 ,getRandomInt(1100, 750) ,0.001, 'linear')


end
end
end


function onUpdate()
if Random == true then
if getPropertyFromGroup('strumLineNotes', 4, 'y') > 275 then
setPropertyFromGroup('playerStrums',0,'downScroll',true)
end
if getPropertyFromGroup('strumLineNotes', 5, 'y') > 275 then
setPropertyFromGroup('playerStrums',1,'downScroll',true)
end
if getPropertyFromGroup('strumLineNotes', 6, 'y') > 275 then
setPropertyFromGroup('playerStrums',2,'downScroll',true)
end
if getPropertyFromGroup('strumLineNotes', 7, 'y') > 275 then
setPropertyFromGroup('playerStrums',3,'downScroll',true)
end
if getPropertyFromGroup('strumLineNotes', 4, 'y') < 275 then
setPropertyFromGroup('playerStrums',0,'downScroll',false)
end
if getPropertyFromGroup('strumLineNotes', 5, 'y') < 275 then
setPropertyFromGroup('playerStrums',1,'downScroll',false)
end
if getPropertyFromGroup('strumLineNotes', 6, 'y') < 275 then
setPropertyFromGroup('playerStrums',2,'downScroll',false)
end
if getPropertyFromGroup('strumLineNotes', 7, 'y') < 275 then
setPropertyFromGroup('playerStrums',3,'downScroll',false)
end
end

    for notesLengthAll = 0,getProperty('notes.length')-1 do
        if getPropertyFromGroup('notes', notesLengthAll, 'mustPress') == true then
if right == true then
                if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (0 * -1))

                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (25 * -1))
                else
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (-32 * -1))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (10 * -1))
                    setPropertyFromGroup('notes',notesLengthAll, 'angle',90)
                    setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
end
end

if left == true then
                if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (0 * -1))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) + (25 * -1))
                else
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (-32 * -1))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) + (10 * -1))
                    setPropertyFromGroup('notes',notesLengthAll, 'angle',270)
                    setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
end
end
if normal == true then
                if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (0 * -1))

                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (25 * -1))
                else
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (-32 * -1))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (10 * -1))
                    setPropertyFromGroup('notes',notesLengthAll, 'angle',0)
                    setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)

end
end
end
end
end

function onCreatePost()
    noteTweenX('Noyocu1', 0, 41005, 0.1, 'linear')
    noteTweenX('Noyovu2', 1, 52005, 0.1, 'linear')
    noteTweenX('Noyovu3', 2, 63005, 0.1, 'linear')
    noteTweenX('Noyocu4', 3, 74500, 0.1, 'linear')
end


function onTimerCompleted(tag)
if tag == 'Xnor' then
    noteTweenX('Noyou1', 4, 415, 0.1, 'linear')
    noteTweenX('Noyou2', 5, 525, 0.1, 'linear')
    noteTweenX('Noyou3', 6, 635, 0.1, 'linear')
    noteTweenX('Noyou4', 7, 745, 0.1, 'linear')
elseif tag == '0' then
noteTweenAngle('43', 4 , 0 , 0.1,'linear')
noteTweenAngle('53', 5 , 0 , 0.1,'linear')
noteTweenAngle('63', 6 , 0 , 0.1,'linear')
noteTweenAngle('73', 7 , 0 , 0.1,'linear')
elseif tag == '90' then
noteTweenAngle('43', 4 , 90 , 0.1,'linear')
noteTweenAngle('53', 5 , 90 , 0.1,'linear')
noteTweenAngle('63', 6 , 90 , 0.1,'linear')
noteTweenAngle('73', 7 , 90 , 0.1,'linear')
elseif tag == '270' then
noteTweenAngle('43', 4 , 270 , 0.1,'linear')
noteTweenAngle('53', 5 , 270 , 0.1,'linear')
noteTweenAngle('63', 6 , 270 , 0.1,'linear')
noteTweenAngle('73', 7 , 270 , 0.1,'linear')
elseif tag == 'Ydown' then
noteTweenY('4', 4 ,550 ,0.1, 'linear')
noteTweenY('5', 5 ,550 ,0.1, 'linear')
noteTweenY('6', 6 ,550 ,0.1, 'linear')
noteTweenY('7', 7 ,550 ,0.1, 'linear')
setPropertyFromGroup('playerStrums',3,'downScroll',true)
setPropertyFromGroup('playerStrums',2,'downScroll',true)
setPropertyFromGroup('playerStrums',1,'downScroll',true)
setPropertyFromGroup('playerStrums',0,'downScroll',true)
elseif tag == 'Yup' then
noteTweenY('4', 4 ,50 ,0.1, 'linear')
noteTweenY('5', 5 ,50 ,0.1, 'linear')
noteTweenY('6', 6 ,50 ,0.1, 'linear')
noteTweenY('7', 7 ,50 ,0.1, 'linear')
setPropertyFromGroup('playerStrums',3,'downScroll',false)
setPropertyFromGroup('playerStrums',2,'downScroll',false)
setPropertyFromGroup('playerStrums',1,'downScroll',false)
setPropertyFromGroup('playerStrums',0,'downScroll',false)
end
end

function onCreatePost()
noteTweenY('4', 4 ,50 ,0.1, 'linear')
noteTweenY('5', 5 ,50 ,0.1, 'linear')
noteTweenY('6', 6 ,50 ,0.1, 'linear')
noteTweenY('7', 7 ,50 ,0.1, 'linear')
setPropertyFromGroup('playerStrums',3,'downScroll',false)
setPropertyFromGroup('playerStrums',2,'downScroll',false)
setPropertyFromGroup('playerStrums',1,'downScroll',false)
setPropertyFromGroup('playerStrums',0,'downScroll',false)
    noteTweenX('Noyou1', 4, 415, 0.1, 'linear')
    noteTweenX('Noyou2', 5, 525, 0.1, 'linear')
    noteTweenX('Noyou3', 6, 635, 0.1, 'linear')
    noteTweenX('Noyou4', 7, 745, 0.1, 'linear')

    noteTweenX('Noyou5', 0, 4100005, 0.1, 'linear')
    noteTweenX('Noyou6', 1, 520005, 0.1, 'linear')
    noteTweenX('Noyou7', 2, 6300005, 0.1, 'linear')
    noteTweenX('Noyou8', 3, 740005, 0.1, 'linear')
end