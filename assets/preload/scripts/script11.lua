local a1 = 0.254829592;
local a2 = -0.284496736;
local a3 = 1.421413741;
local a4 = -1.453152027;
local a5 = 1.061405429;
local p = 0.3275911;
local curTotalNotesHit = 0
local counterUpdated = 0
function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        strumTime = getPropertyFromGroup('notes', id, 'strumTime')
        songPos = getPropertyFromClass('Conductor', 'songPosition')
        rOffset = getPropertyFromClass('ClientPrefs','ratingOffset')
        updateAccuracy(strumTime, songPos, rOffset)
    end
end

function updateAccuracy(strumTime, songPos, rOffset) -- HELPER FUNCTION
    local noteDiffSign = strumTime - songPos + rOffset
    local noteDiffAbs = math.abs(noteDiffSign)
    local totalNotesForNow = handleNoteDiff(noteDiffAbs)
    local rawJudgements = cancelExistingJudgements(noteDiffAbs)
    curTotalNotesHit = curTotalNotesHit + totalNotesForNow
    counterUpdated = counterUpdated + 1
    curAccuracy = curTotalNotesHit / counterUpdated
    ratingStr = accuracyToRatingString(curAccuracy * 100)
    setProperty('ratingPercent', math.max(0, curAccuracy))
    setProperty('ratingName', ratingStr)
end

function cancelExistingJudgements(diff) -- HELPER FUNCTION
    if diff < 46.0 then
        return 1.0
    elseif diff < 91.0 then
        return 0.75
    elseif diff < 136.0 then
        return 0.5
    else
        return 0.0
    end
end


function accuracyToRatingString(accuracy) 
    -- you can just add more ratings if you copy and past a line
    -- the number is the accuracy, the cur ingame rating must be the same or higher to be seen
    -- the text behind the return is the text displayed in game
    -- as you can see in the last accuracy there is no value, that just means that every thing lower than (in this case 25) is that rating
    if accuracy >= 100 then
        return 'you did it!!!'
    elseif accuracy >= 90 then
        return 'Legend!'
    elseif accuracy >= 80 then
        return 'come on, a little more'
    elseif accuracy >= 70 then
        return 'you can do it!'
    elseif accuracy >= 69 then
        return 'Nice'
    elseif accuracy >= 60 then
        return 'they still there'
    elseif accuracy >= 35 then
        return 'the darkness is close. . .'
    elseif accuracy >= 25 then
        return 'help. . .'
    else
        return 'bun bun?'  
    end
end

function handleNoteDiff(diff) -- HELPER FUNCTION
    local maxms = diff
    local ts = 1

    local max_points = 1;
    local miss_weight = -0; -- used to be -5.5; this should be a lot less harsh.
    local ridic = 5 * ts;
    local max_boo_weight = 166
    local ts_pow = 0.75;
    local zero = 65 * ts^ts_pow
    local power = 2.5;
    local dev = 22.7 * ts^ts_pow

    if (maxms <= ridic) then -- // anything below this (judge scaled) threshold is counted as full pts
        return max_points
    elseif (maxms <= zero) then -- // ma/pa region, exponential
        return max_points * erf((zero - maxms) / dev)
    elseif (maxms <= max_boo_weight) then -- // cb region, linear
        return (maxms - zero) * miss_weight / (max_boo_weight - zero)
    else
        return miss_weight
    end
end

function erf(x)  -- HELPER FUNCTION
    local sign = 1;
    if (x < 0) then
        sign = -1;
    end
    x = math.abs(x);
    local t = 1.0 / (1.0 + p * x);
    local y = 1.0 - (((((a5 * t + a4) * t) + a3) * t + a2) * t + a1) * t * math.exp(-x * x);

    return sign * y;
end

function noteMissPress(direction)
    updateAccuracy(400, 0, 0)
end

function noteMiss(id, direction, noteType, isSustainNote)
    updateAccuracy(400, 0, 0)
end