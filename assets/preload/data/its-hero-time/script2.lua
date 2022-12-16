
function onStepHit()
    if curStep == 128 then


doTweenAlpha('an', 'animatedicon', 1, 1, 'linear')
end
end


function onCreatePost()
        triggerEvent('Camera Follow Pos','1300','-550')
setProperty('animatedicon.alpha', 0)
end

