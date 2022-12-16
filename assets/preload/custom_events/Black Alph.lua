--by letter D
function onCreatePost()
	makeLuaSprite('k', nil, 0, 0);
	makeGraphic('k', 1370, 750, '000000');
	setObjectCamera('k', 'other');

	setProperty('k.alpha',0)
	addLuaSprite('k', true);
end
function onEvent(n,v1,v2)
	if n == 'Black Alph' then
		doTweenAlpha('hi', 'k', 1, v1, 'quadInOut');

end
end


function onTweenCompleted(tag) 
    if tag == 'hi' then
		doTweenAlpha('hik', 'k', 0, 0.00001, 'quadInOut');

end
end