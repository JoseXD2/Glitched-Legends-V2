canAdd = true
function opponentNoteHit()
   runTimer('a', 0.3)
   if canAdd == true then
       canAdd = false
       addChromaticAbberationEffect('hud',  0.007)
       addChromaticAbberationEffect('game',  0.004)
    
    end
end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'a' then
     clearEffects('hud', true)
     clearEffects('game', true)
    canAdd = true
end
end