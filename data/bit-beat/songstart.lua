function onCreatePost()
setTextFont('scoreTxt', 'smb1.ttf')
setTextSize('scoreTxt', '17')
setTextFont('timeTxt', 'smb1.ttf')
setTextSize('timeTxt', '25')

setCameraFollowPoint(640, 520)
setProperty('isCameraOnForcedPos',true)

if difficultyName=='Hard' then
    bitbeatfc=1
end


if getModSetting("smb1hbc")=="B&W" then
    setHealthBarColors('black', 'white')
end
if getModSetting("smb1hbc")=="V-Slice" then
    setHealthBarColors('red', 'lime')
end
if getModSetting("smb1hbc")=="V-Slice NES" then
    setHealthBarColors('#b21030', '#71f341')
end
if getModSetting("smb1hbc")=="SA64" then
    setHealthBarColors('#2800ba', '#b21030')
end

if getModSetting("timebarc")=="SA64" then
    setTimeBarColors("#2800ba", "#b21030")
end
end

function onStartCountdown()
    playSound("smas_chat", 0.75, "crowdchat", false)
    counter=3
end

function onCountdownTick(counter)
    soundFadeOut("crowdchat", 1.0, 0)
end

function noteMiss()
	bitbeatfc=0
end

function onEndSong()
    if bitbeatfc==1 and isAchievementUnlocked('bitbeat_nomiss')==false then
        unlockAchievement('bitbeat_nomiss')
    end
	return Function_Continue;
end
-- Had to do this since Psych's built-in No Miss achievements only applies to Story Mode, not Free Play :)