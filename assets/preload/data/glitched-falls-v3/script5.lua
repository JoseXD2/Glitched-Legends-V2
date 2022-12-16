local defaultNotePos = {}
local spin = 10 -- how much it moves before going the other direction


function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 500 --How long it will take.

if curBeat >= 216 then
        setProperty("camHUD.angle", spin * math.sin(songPos))
    end
    

end