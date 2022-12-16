local defaultNotePos = {}
local spin = 10 -- how much it moves before going the other direction

function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 500 --How long it will take.
    
    if curStep <= 865 then
        setProperty("camHUD.angle", spin * math.sin(songPos))

    end
end