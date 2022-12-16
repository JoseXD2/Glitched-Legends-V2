local Do = 0
local Uo = 0
function onEvent(name, value1, value2)
    if name == 'On' then
    if value1 == 'D1' then
Do = 1
end
    if value1 == 'D2' then
Do = 2
end
    if value1 == 'D0' then
Do = 0
end
    if value1 == 'U1' then
Uo = 1
end
    if value1 == 'U2' then
Uo = 2
end
    if value1 == 'U0' then
Uo = 0
end
end
end
function onBeatHit()

        if curBeat % 1 == 0 and Uo == 1 then

		triggerEvent('Add Camera Zoom', '0.1', '0.1')
noteTweenY('BF1', 4, 70, 0.01, 'linear');
noteTweenY('BF3', 6, 70, 0.01, 'linear');
noteTweenY('BF2', 5, -30, 0.01, 'linear');
noteTweenY('BF4', 7, -30, 0.01, 'linear');
    noteTweenX('Middleshit4', 4, 355, 0.01, 'linear')
    noteTweenX('Middleshit5', 5, 475, 0.01, 'linear')
    noteTweenX('Middleshit6', 6, 705, 0.01, 'linear')
    noteTweenX('Middleshit7', 7, 815, 0.01, 'linear')

        elseif curBeat % 2 == 0 and Uo == 2 then
		triggerEvent('Add Camera Zoom', '0.05', '0.05')
noteTweenY('BF1', 4, 70, 0.01, 'linear');
noteTweenY('BF3', 6, 70, 0.01, 'linear');
noteTweenY('BF2', 5, -30, 0.01, 'linear');
noteTweenY('BF4', 7, -30, 0.01, 'linear');
    noteTweenX('Middleshit4', 4, 355, 0.01, 'linear')
    noteTweenX('Middleshit5', 5, 475, 0.01, 'linear')
    noteTweenX('Middleshit6', 6, 705, 0.01, 'linear')
    noteTweenX('Middleshit7', 7, 815, 0.01, 'linear')



        elseif curBeat % 1 == 0 and Do == 1 then
		triggerEvent('Add Camera Zoom', '0.05', '0.05')
noteTweenY('BF1', 4, 530, 0.01, 'linear');
noteTweenY('BF3', 6, 530, 0.01, 'linear');
noteTweenY('BF2', 5, 570, 0.01, 'linear');
noteTweenY('BF4', 7, 570, 0.01, 'linear');
    noteTweenX('Middleshit4', 4, 355, 0.01, 'linear')
    noteTweenX('Middleshit5', 5, 475, 0.01, 'linear')
    noteTweenX('Middleshit6', 6, 705, 0.01, 'linear')
    noteTweenX('Middleshit7', 7, 815, 0.01, 'linear')

        elseif curBeat % 2 == 0 and Do == 2 then
		triggerEvent('Add Camera Zoom', '0.05', '0.05')
noteTweenY('BF1', 4, 530, 0.01, 'linear');
noteTweenY('BF3', 6, 530, 0.01, 'linear');
noteTweenY('BF2', 5, 570, 0.01, 'linear');
noteTweenY('BF4', 7, 570, 0.01, 'linear');
    noteTweenX('Middleshit4', 4, 355, 0.01, 'linear')
    noteTweenX('Middleshit5', 5, 475, 0.01, 'linear')
    noteTweenX('Middleshit6', 6, 705, 0.01, 'linear')
    noteTweenX('Middleshit7', 7, 815, 0.01, 'linear')
end
end



function onStepHit()
if downscroll then
        if curStep == 448 then
		triggerEvent('On', 'D1')
        elseif curStep == 704 then
		triggerEvent('On', 'D2')
        elseif curStep == 720 then
		triggerEvent('On', 'D1')
        elseif curStep == 744 then
		triggerEvent('On', 'D2')
        elseif curStep == 784 then
		triggerEvent('On', 'D1')
        elseif curStep == 800 then
		triggerEvent('On', 'D2')
        elseif curStep == 960 then
		triggerEvent('On', 'D1')
        elseif curStep == 1216 then
		triggerEvent('On', 'D2')
        elseif curStep == 1508 then
		triggerEvent('On', 'D0')

end
end
if not downscroll then
        if curStep == 448 then
		triggerEvent('On', 'U1')
        elseif curStep == 704 then
		triggerEvent('On', 'U2')
        elseif curStep == 720 then
		triggerEvent('On', 'U1')
        elseif curStep == 744 then
		triggerEvent('On', 'U2')
        elseif curStep == 784 then
		triggerEvent('On', 'U1')
        elseif curStep == 800 then
		triggerEvent('On', 'U2')
        elseif curStep == 960 then
		triggerEvent('On', 'U1')
        elseif curStep == 1216 then
		triggerEvent('On', 'U2')
        elseif curStep == 1508 then
		triggerEvent('On', 'U0')
end
end
end

function onUpdate(elapsed)
    noteTweenX('dad0', 0, 410005, 0.1, 'linear')
    noteTweenX('dad1', 1, 5200005, 0.1, 'linear')
    noteTweenX('dad2', 2, 6300005, 0.1, 'linear')
    noteTweenX('dad3', 3, 7400005, 0.1, 'linear')
if downscroll then
    noteTweenX('Middleshit4', 4, 415, 0.1, 'linear')
    noteTweenX('Middleshit5', 5, 525, 0.1, 'linear')
    noteTweenX('Middleshit6', 6, 635, 0.1, 'linear')
    noteTweenX('Middleshit7', 7, 745, 0.1, 'linear')

noteTweenY('BF21', 4, 550, 0.1, 'linear');
noteTweenY('BF22', 6, 550, 0.1, 'linear');
noteTweenY('BF23', 7, 550, 0.1, 'linear');
noteTweenY('BF24', 5, 550, 0.1, 'linear');

end
if not downscroll then
    noteTweenX('Middleshit4', 4, 415, 0.1, 'linear')
    noteTweenX('Middleshit5', 5, 525, 0.1, 'linear')
    noteTweenX('Middleshit6', 6, 635, 0.1, 'linear')
    noteTweenX('Middleshit7', 7, 745, 0.1, 'linear')

noteTweenY('BF21', 4, 50, 0.1, 'linear');
noteTweenY('BF22', 6, 50, 0.1, 'linear');
noteTweenY('BF23', 7, 50, 0.1, 'linear');
noteTweenY('BF24', 5, 50, 0.1, 'linear');
end

end