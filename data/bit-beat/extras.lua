function onUpdate()
    if keyJustPressed('reset') then
        if not isAchievementUnlocked("so_retroacheivements") then
            unlockAchievement("so_retroacheivements")
        end
        playSound("Pipe")
        loadSong('SORETRO (SA64 Cover)', 1)
    end
end

function onEndSong()
    if getAchievementScore("commitedtothebit")<64 then
        addAchievementScore('commitedtothebit')
    end 
end

function onPause()
	playSound("pause")
	return Function_Continue;
end
function onResume()
	playSound("pause")
end