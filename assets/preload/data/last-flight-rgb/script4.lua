


function opponentNoteHit(id, direction, noteType, isSustainNote)

if direction == 0 then--C24B99
doTweenColor('1', 'sanctuaryback', 'C24B99', 0.1, 'linear')
doTweenColor('2', 'sanctuaryback2', 'C24B99', 0.1, 'linear')
doTweenColor('3', 'sanctuaryback3', 'C24B99', 0.1, 'linear')

doTweenColor('17', 'boyfriend', 'C24B99', 0.1, 'linear')
doTweenColor('18', 'dad', 'C24B99', 0.1, 'linear')
doTweenColor('19', 'gf', 'C24B99', 0.1, 'linear')

runTimer('b0', 0.2)

elseif direction == 1 then--00FFFF
doTweenColor('1', 'sanctuaryback', '00FFFF', 0.1, 'linear')
doTweenColor('2', 'sanctuaryback2', '00FFFF', 0.1, 'linear')
doTweenColor('3', 'sanctuaryback3', '00FFFF', 0.1, 'linear')

doTweenColor('17', 'boyfriend', '00FFFF', 0.1, 'linear')
doTweenColor('18', 'dad', '00FFFF', 0.1, 'linear')
doTweenColor('19', 'gf', '00FFFF', 0.1, 'linear')

runTimer('b1', 0.2)

elseif direction == 2 then--12FA05
doTweenColor('1', 'sanctuaryback', '12FA05', 0.1, 'linear')
doTweenColor('2', 'sanctuaryback2', '12FA05', 0.1, 'linear')
doTweenColor('3', 'sanctuaryback3', '12FA05', 0.1, 'linear')

doTweenColor('17', 'boyfriend', '12FA05', 0.1, 'linear')
doTweenColor('18', 'dad', '12FA05', 0.1, 'linear')
doTweenColor('19', 'gf', '12FA05', 0.1, 'linear')

runTimer('b2', 0.2)

elseif direction == 3 then--F9393F
doTweenColor('1', 'sanctuaryback', 'F9393F', 0.1, 'linear')
doTweenColor('2', 'sanctuaryback2', 'F9393F', 0.1, 'linear')
doTweenColor('3', 'sanctuaryback3', 'F9393F', 0.1, 'linear')

doTweenColor('17', 'boyfriend', 'F9393F', 0.1, 'linear')
doTweenColor('18', 'dad', 'F9393F', 0.1, 'linear')
doTweenColor('19', 'gf', 'F9393F', 0.1, 'linear')

runTimer('b3', 0.2)

end
end


function goodNoteHit(id, direction, noteType, isSustainNote)
if direction == 0 then--C24B99
doTweenColor('1', 'sanctuaryback', 'C24B99', 0.1, 'linear')
doTweenColor('2', 'sanctuaryback2', 'C24B99', 0.1, 'linear')
doTweenColor('3', 'sanctuaryback3', 'C24B99', 0.1, 'linear')

doTweenColor('17', 'boyfriend', 'C24B99', 0.1, 'linear')
doTweenColor('18', 'dad', 'C24B99', 0.1, 'linear')
doTweenColor('19', 'gf', 'C24B99', 0.1, 'linear')

runTimer('b0', 0.2)

elseif direction == 1 then--00FFFF
doTweenColor('1', 'sanctuaryback', '00FFFF', 0.1, 'linear')
doTweenColor('2', 'sanctuaryback2', '00FFFF', 0.1, 'linear')
doTweenColor('3', 'sanctuaryback3', '00FFFF', 0.1, 'linear')

doTweenColor('17', 'boyfriend', '00FFFF', 0.1, 'linear')
doTweenColor('18', 'dad', '00FFFF', 0.1, 'linear')
doTweenColor('19', 'gf', '00FFFF', 0.1, 'linear')

runTimer('b1', 0.2)

elseif direction == 2 then--12FA05
doTweenColor('1', 'sanctuaryback', '12FA05', 0.1, 'linear')
doTweenColor('2', 'sanctuaryback2', '12FA05', 0.1, 'linear')
doTweenColor('3', 'sanctuaryback3', '12FA05', 0.1, 'linear')

doTweenColor('17', 'boyfriend', '12FA05', 0.1, 'linear')
doTweenColor('18', 'dad', '12FA05', 0.1, 'linear')
doTweenColor('19', 'gf', '12FA05', 0.1, 'linear')

runTimer('b2', 0.2)

elseif direction == 3 then--F9393F
doTweenColor('1', 'sanctuaryback', 'F9393F', 0.1, 'linear')
doTweenColor('2', 'sanctuaryback2', 'F9393F', 0.1, 'linear')
doTweenColor('3', 'sanctuaryback3', 'F9393F', 0.1, 'linear')

doTweenColor('17', 'boyfriend', 'F9393F', 0.1, 'linear')
doTweenColor('18', 'dad', 'F9393F', 0.1, 'linear')
doTweenColor('19', 'gf', 'F9393F', 0.1, 'linear')

runTimer('b3', 0.2)

end
end



function onTimerCompleted(tag)
if tag == 'b0' then
doTweenColor('1', 'sanctuaryback', 'FFFFFF', 0.1, 'linear')
doTweenColor('2', 'sanctuaryback2', 'FFFFFF', 0.1, 'linear')
doTweenColor('3', 'sanctuaryback3', 'FFFFFF', 0.1, 'linear')

doTweenColor('17', 'boyfriend', 'FFFFFF', 0.2, 'linear')
doTweenColor('18', 'dad', 'FFFFFF', 0.2, 'linear')
doTweenColor('19', 'gf', 'FFFFFF', 0.2, 'linear')

elseif tag == 'b1' then

doTweenColor('1', 'sanctuaryback', 'FFFFFF', 0.1, 'linear')

doTweenColor('2', 'sanctuaryback2', 'FFFFFF', 0.1, 'linear')

doTweenColor('3', 'sanctuaryback3', 'FFFFFF', 0.1, 'linear')

doTweenColor('17', 'boyfriend', 'FFFFFF', 0.2, 'linear')
doTweenColor('18', 'dad', 'FFFFFF', 0.2, 'linear')
doTweenColor('19', 'gf', 'FFFFFF', 0.2, 'linear')


elseif tag == 'b2' then
doTweenColor('1', 'sanctuaryback', 'FFFFFF', 0.1, 'linear')

doTweenColor('2', 'sanctuaryback2', 'FFFFFF', 0.1, 'linear')

doTweenColor('3', 'sanctuaryback3', 'FFFFFF', 0.1, 'linear')


doTweenColor('17', 'boyfriend', 'FFFFFF', 0.2, 'linear')
doTweenColor('18', 'dad', 'FFFFFF', 0.2, 'linear')
doTweenColor('19', 'gf', 'FFFFFF', 0.2, 'linear')

elseif tag == 'b3' then

doTweenColor('1', 'sanctuaryback', 'FFFFFF', 0.1, 'linear')

doTweenColor('2', 'sanctuaryback2', 'FFFFFF', 0.1, 'linear')

doTweenColor('3', 'sanctuaryback3', 'FFFFFF', 0.1, 'linear')
doTweenColor('17', 'boyfriend', 'FFFFFF', 0.2, 'linear')
doTweenColor('18', 'dad', 'FFFFFF', 0.2, 'linear')
doTweenColor('19', 'gf', 'FFFFFF', 0.2, 'linear')
end
end