function onCreatePost()
if not downscroll then
    noteTweenX('Middleshit0', 0, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit1', 1, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit2', 2, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit3', 3, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit4', 4, 415, 0.1, 'quartInOut')
    noteTweenX('Middleshit5', 5, 525, 0.1, 'quartInOut')
    noteTweenX('Middleshit6', 6, 635, 0.1, 'quartInOut')
    noteTweenX('Middleshit7', 7, 745, 0.1, 'quartInOut')

     end
if downscroll then
    noteTweenX('Middleshit0', 0, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit1', 1, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit2', 2, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit3', 3, -5000, 0.1, 'quartInOut')
    noteTweenX('Middleshit4', 4, 415, 0.1, 'quartInOut')
    noteTweenX('Middleshit5', 5, 525, 0.1, 'quartInOut')
    noteTweenX('Middleshit6', 6, 635, 0.1, 'quartInOut')
    noteTweenX('Middleshit7', 7, 745, 0.1, 'quartInOut')
setPropertyFromGroup('playerStrums',2,'downScroll',false)
setPropertyFromGroup('playerStrums',3,'downScroll',false)
setPropertyFromGroup('playerStrums',0,'downScroll',false)
setPropertyFromGroup('playerStrums',1,'downScroll',false)
    noteTweenY('Middleshit12', 4, 50, 0.1, 'quartInOut')
    noteTweenY('Middleshit22', 5, 50, 0.1, 'quartInOut')
    noteTweenY('Middleshit32', 6, 50, 0.1, 'quartInOut')
    noteTweenY('Middleshit42', 7, 50, 0.1, 'quartInOut')

function onUpdate(elapsed)
     if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
        setPropertyFromClass('ClientPrefs', 'downScroll', false)

end
end
end
end
