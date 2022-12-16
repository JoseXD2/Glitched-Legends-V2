curentVersion = 0;

function onCreate()
   bit = string.gsub(version,"%.","")

   curentVersion = tonumber(bit)
end


function onCreatePost()
    makeLuaText('songText','Made by Dusttoybonnie team DIF: ' .. getProperty('HI!!!') .. " | Glitched legends V 1.5", 0, 360, 140);
    setTextAlignment('songText', 'left');
    setTextSize('songText', 15);
    setTextBorder('songText', 1, '000000');
    setObjectCamera('songText', 'camHUD');
    addLuaText('songText');
if downscroll then
    makeLuaText('songText','Made by Dusttoybonnie team DIF: ' .. getProperty('storyDifficultyText') .. " | Glitched legends V 1.5", 0, 360, 140);
    setTextAlignment('songText', 'left');
    setTextSize('songText', 15);
    setTextBorder('songText', 1, '000000');
    setObjectCamera('songText', 'camHUD');
    addLuaText('songText');
end
end

function onSongStart()
		runTimer('gonewatermark', 5);

end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'gonewatermark' then
		doTweenAlpha('it was shit anyway (me crying in the back)', 'songText', 0, 2.5, 'linear');
end
end