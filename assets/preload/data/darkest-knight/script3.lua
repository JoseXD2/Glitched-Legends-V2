
local spin = 5 -- how much it moves before going the other direction
 


function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 800 --How long it will take.
    
    if curStep >= 1 then
        setProperty("gothamback3.angle", spin * math.sin(songPos))

    end
    

end